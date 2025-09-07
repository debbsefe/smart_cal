import 'dart:collection';

import 'package:collection/collection.dart';
import 'package:device_calendar/device_calendar.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_cal/core/core.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:uuid/uuid.dart';

part 'calendar_notifier.freezed.dart';
part 'calendar_state.dart';

final deviceCalenderProvider = Provider<DeviceCalendarPlugin>((ref) {
  return DeviceCalendarPlugin();
});

final calendarNotifierProvider =
    StateNotifierProvider.autoDispose<CalendarNotifier, CalendarState>(
  (ref) {
    final deviceCalendar = ref.watch(deviceCalenderProvider);
    return CalendarNotifier(
      database: ref.watch(databaseProvider),
      deviceCalendar: deviceCalendar,
    )..init();
  },
);

class CalendarNotifier extends StateNotifier<CalendarState> {
  CalendarNotifier({
    required Database database,
    required DeviceCalendarPlugin deviceCalendar,
  })  : _database = database,
        _deviceCalendar = deviceCalendar,
        super(CalendarState(selectedDate: DateTime.now()));
  final Database _database;
  final DeviceCalendarPlugin _deviceCalendar;
  final _logger = Logger('CalendarNotifier');

  Future<void> init() async {
    final date = state.selectedDate;
    final startDate = DateTime(date.year, date.month, date.day - 30);
    final endDate = DateTime(date.year, date.month, date.day + 60);

    _database.smartEventDao
        .watchEventsForDateRange(startDate: startDate, endDate: endDate)
        .listen((event) {
      state = state.copyWith(events: event);
    });
  }

  Future<void> fetchMoreEvents(DateTime date) async {
    final startDate = DateTime(date.year, date.month, date.day - 30);
    final endDate = DateTime(date.year, date.month, date.day + 60);

    final events = await getEventsforRange(startDate, endDate);

    state = state.copyWith(events: events);
  }

  Future<List<SmartEvent>> getEventsforRange(
    DateTime startDate,
    DateTime endDate,
  ) {
    return _database.smartEventDao
        .watchEventsForDateRange(startDate: startDate, endDate: endDate)
        .first;
  }

  Future<void> createEvent(SmartEvent event) async {
    await _database.smartEventDao.insertEvent(event);
  }

  Future<void> editEvent(SmartEvent event) async {
    await _database.smartEventDao.editEvent(event);
  }

  Future<void> deleteEvent(SmartEvent event) async {
    await _database.smartEventDao.deleteEvent(event);
  }

  void markAsCompleted(SmartEvent event) {
    // final updatedEvent = event.copyWith(isCompleted: true);
    editEvent(event);
  }

  Future<void> retrieveLocalCalendar(Calendar calendar) async {
    final startDate = DateTime.now().add(const Duration(days: -30));
    final endDate = DateTime.now().add(const Duration(days: 30));
    final calendarEventsResult = await _deviceCalendar.retrieveEvents(
      calendar.id,
      RetrieveEventsParams(startDate: startDate, endDate: endDate),
    );

    final deviceEvents = calendarEventsResult.data;
    if (deviceEvents == null || deviceEvents.isEmpty) {
      _logger.fine(
        'No events found in local calendar ${calendar.id} for the given range.',
      );
      return;
    }

    final recurringEvents =
        deviceEvents.where((event) => event.recurrenceRule != null);
    if (recurringEvents.isNotEmpty) {
      final groupRecurringEvents =
          groupBy(recurringEvents, (event) => event.eventId);

      final smartRecurringEvents = groupRecurringEvents.entries.map((entry) {
        final firstEvent = entry.value.first;
        return SmartEvent(
          id: const Uuid().v4(),
          externalEventId: firstEvent.eventId!,
          externalCalendarId: calendar.id,
          calendarColor: calendar.color,
          title: firstEvent.title ?? 'No Title',
          description: firstEvent.description ?? '',
          date: firstEvent.start ?? DateTime.now(),
          startTime: TimeOfDay.fromDateTime(firstEvent.start ?? DateTime.now()),
          endTime: TimeOfDay.fromDateTime(firstEvent.end ?? DateTime.now()),
          createdAt: DateTime.now(),
          updatedAt: DateTime.now(),
          isRecurring: true,
          recurringType:
              firstEvent.recurrenceRule?.recurrenceFrequency?.toRecurringType,
          recurringEndDateTime: firstEvent.recurrenceRule?.endDate,
        );
      }).toList();

      _logger.fine(
        'Inserting ${smartRecurringEvents.length} recurring events from local '
        'calendar ${calendar.id}.',
      );
      await _database.smartEventDao.bulkInsertEvent(smartRecurringEvents);
    }

    final nonRecurringEvents = deviceEvents
        .where((deviceEvent) => deviceEvent.recurrenceRule == null)
        .map((deviceEvent) {
      return SmartEvent(
        id: const Uuid().v4(),
        externalEventId: deviceEvent.eventId!,
        externalCalendarId: calendar.id,
        calendarColor: calendar.color,
        title: deviceEvent.title ?? 'No Title',
        description: deviceEvent.description ?? '',
        date: deviceEvent.start ?? DateTime.now(),
        startTime: TimeOfDay.fromDateTime(deviceEvent.start ?? DateTime.now()),
        endTime: TimeOfDay.fromDateTime(deviceEvent.end ?? DateTime.now()),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
    }).toList();

    if (nonRecurringEvents.isNotEmpty) {
      _logger.fine(
        'Inserting ${nonRecurringEvents.length} events from local calendar '
        'calendar ${calendar.id}.',
      );
      await _database.smartEventDao.bulkInsertEvent(
        nonRecurringEvents,
      );
    }
  }
}
