import 'dart:collection';

import 'package:table_calendar/table_calendar.dart';

class SmartEvent {
  const SmartEvent(this.title);
  final String title;

  @override
  String toString() => title;
}

final kEvents = LinkedHashMap<DateTime, List<SmartEvent>>(
  equals: isSameDay,
  hashCode: getHashCode,
)..addAll(_kEventSource);

final _kEventSource = {
  for (var item in List.generate(50, (index) => index))
    DateTime.utc(kFirstDay.year, kFirstDay.month, item * 5): List.generate(
      item % 4 + 1,
      (index) => SmartEvent('Event $item | ${index + 1}'),
    ),
}..addAll({
    kToday: [
      const SmartEvent("Today's Event 1"),
      const SmartEvent("Today's Event 2"),
    ],
  });

int getHashCode(DateTime key) {
  return key.day * 1000000 + key.month * 10000 + key.year;
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);
