import 'dart:collection';

import 'package:device_calendar/device_calendar.dart';
import 'package:flutter/material.dart';
import 'package:smart_cal/core/core.dart';
import 'package:smart_cal/features/calendar/notifier/calendar_notifier.dart';

final localCalendarProvider =
    FutureProvider<UnmodifiableListView<Calendar>?>((ref) async {
  final deviceCalendar = DeviceCalendarPlugin();
  final granted = await deviceCalendar.requestPermissions();
  if (granted.isSuccess) {
    final cals = await deviceCalendar.retrieveCalendars();
    return cals.data;
  }
  return null;
});

class LocalCalendarScreen extends ConsumerStatefulWidget {
  const LocalCalendarScreen({super.key});

  static const routeName = '/local_calendar';

  static Route<void> open() {
    return MaterialPageRoute<void>(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const LocalCalendarScreen(),
    );
  }

  @override
  ConsumerState<LocalCalendarScreen> createState() =>
      _LocalCalendarScreenState();
}

class _LocalCalendarScreenState extends ConsumerState<LocalCalendarScreen> {
  @override
  Widget build(BuildContext context) {
    final calendarAsync = ref.watch(localCalendarProvider);
    return calendarAsync.map(
      data: (calendars) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Local Calendar'),
          ),
          body: Column(
            children: calendars.value?.map((e) {
                  return ListTile(
                    title: Text(e.name ?? ''),
                    subtitle: Text(e.accountType ?? ''),
                    onTap: () {
                      ref
                          .read(calendarNotifierProvider.notifier)
                          .retrieveLocalCalendar(e.id ?? '');
                    },
                  );
                }).toList() ??
                [],
          ),
        );
      },
      error: (e) {
        return Text(e.error.toString());
      },
      loading: (_) {
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
