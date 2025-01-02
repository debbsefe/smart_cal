import 'dart:collection';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smart_cal/core/core.dart';
import 'package:table_calendar/table_calendar.dart';

part 'calendar_notifier.freezed.dart';
part 'calendar_notifier.g.dart';
part 'calendar_state.dart';

@riverpod
class CalendarNotifier extends _$CalendarNotifier {
  @override
  CalendarState build() => CalendarState(selectedDate: DateTime.now());

  void saveEvent(SmartEvent event) {
    state = state.copyWith(
      events: [...state.events, event],
    );
  }

  void deleteEvent(SmartEvent event) {
    state = state.copyWith(
      events: state.events.where((e) => e.id != event.id).toList(),
    );
  }

  void updateEvent(SmartEvent event) {
    state = state.copyWith(
      events: [
        for (final e in state.events)
          if (e.id == event.id) event else e,
      ],
    );
  }
}
