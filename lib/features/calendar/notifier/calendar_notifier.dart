import 'dart:collection';

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

  Future<void> retrieveLocalCalendar(String calendarId) async {
    final startDate = DateTime.now().add(const Duration(days: -30));
    final endDate = DateTime.now().add(const Duration(days: 30));
    final calendarEventsResult = await _deviceCalendar.retrieveEvents(
      calendarId,
      RetrieveEventsParams(startDate: startDate, endDate: endDate),
    );

    final deviceEvents = calendarEventsResult.data;
    if (deviceEvents == null || deviceEvents.isEmpty) {
      _logger.fine(
        'No events found in local calendar $calendarId for the given range.',
      );
      return;
    }

    final smartEvents = deviceEvents.map((deviceEvent) {
      return SmartEvent(
        id: const Uuid().v4(),
        title: deviceEvent.title ?? 'No Title',
        description: deviceEvent.description ?? '',
        date: deviceEvent.start ?? DateTime.now(),
        time: TimeOfDay.fromDateTime(deviceEvent.start ?? DateTime.now()),
        createdAt: DateTime.now(),
        updatedAt: DateTime.now(),
      );
    }).toList();

    if (smartEvents.isNotEmpty) {
      _logger.fine(
        'Inserting ${smartEvents.length} events from local calendar $calendarId.',
      );
      await _database.smartEventDao.bulkInsertEvent(smartEvents);
    } else {
      _logger.fine(
        'No valid events to insert after transformation for calendar $calendarId.',
      );
    }
  }
}
