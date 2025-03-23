import 'package:flutter/material.dart';
import 'package:smart_cal/calendar/calendar.dart';
import 'package:smart_cal/core/core.dart';

final eventsForThisWeekProvider = StreamProvider<List<SmartEvent>>((ref) {
  final startDate = DateUtils.dateOnly(DateTime.now());
  final endDate = DateTime(startDate.year, startDate.month, startDate.day + 7);

  return ref
      .watch(databaseProvider)
      .smartEventDao
      .watchEventsForDateRange(startDate: startDate, endDate: endDate);
});

class UpcomingEventsScreen extends ConsumerWidget {
  const UpcomingEventsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final upcomingEvents = ref.watch(eventsForThisWeekProvider).value;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 48),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: upcomingEvents?.length,
                itemBuilder: (context, index) {
                  final value = upcomingEvents![index];

                  return EventTile(event: value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
