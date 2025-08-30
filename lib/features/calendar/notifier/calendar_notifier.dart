import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_cal/core/core.dart';
import 'package:table_calendar/table_calendar.dart';

part 'calendar_notifier.freezed.dart';
part 'calendar_state.dart';

final calendarNotifierProvider =
    StateNotifierProvider.autoDispose<CalendarNotifier, CalendarState>(
  (ref) => CalendarNotifier(database: ref.watch(databaseProvider))..init(),
);

class CalendarNotifier extends StateNotifier<CalendarState> {
  CalendarNotifier({required Database database})
      : _database = database,
        super(CalendarState(selectedDate: DateTime.now()));
  final Database _database;

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
}
