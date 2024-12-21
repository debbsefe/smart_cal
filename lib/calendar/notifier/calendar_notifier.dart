import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smart_cal/core/core.dart';

part 'calendar_notifier.g.dart';

@riverpod
class CalendarNotifier extends _$CalendarNotifier {
  @override
  CalendarState build() => CalendarState(selectedDate: DateTime.now());
}

class CalendarState {
  const CalendarState({
    required this.selectedDate,
    this.events = const [],
  });
  final DateTime selectedDate;
  final List<SmartEvent> events;
}
