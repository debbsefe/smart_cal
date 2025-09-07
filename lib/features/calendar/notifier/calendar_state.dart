part of 'calendar_notifier.dart';

@freezed
abstract class CalendarState with _$CalendarState {
  factory CalendarState({
    required DateTime selectedDate,
    @Default([]) List<SmartEvent> events,
  }) = _CalendarState;

  CalendarState._();

  LinkedHashMap<DateTime, List<SmartEvent>> get kEvents =>
      LinkedHashMap<DateTime, List<SmartEvent>>(
        equals: isSameDay,
        hashCode: getHashCode,
      )..addAll(getEvents());

  Map<DateTime, List<SmartEvent>> getEvents() {
    final map = <DateTime, List<SmartEvent>>{};
    for (final event in events) {
      final key = DateTime.utc(
        event.date.year,
        event.date.month,
        event.date.day,
      );
      if (map.containsKey(key)) {
        map[key]!.add(event);
      } else {
        map[key] = [event];
      }
    }
    return map;
  }
}

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}
