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
    _database.smartEventDao.watchAllEvents().listen((event) {
      state = state.copyWith(events: event);
    });
  }

  Future<void> saveEvent(SmartEvent event) async {
    await _database.smartEventDao.insertEvent(event);
  }

  Future<void> deleteEvent(SmartEvent event) async {
    await _database.smartEventDao.insertEvent(event);
  }
}
