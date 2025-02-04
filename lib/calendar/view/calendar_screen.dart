import 'package:flutter/material.dart';
import 'package:smart_cal/calendar/calendar.dart';
import 'package:smart_cal/calendar/notifier/calendar_notifier.dart';
import 'package:smart_cal/core/core.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends ConsumerStatefulWidget {
  const CalendarScreen({super.key});

  @override
  ConsumerState<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends ConsumerState<CalendarScreen> {
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  List<SmartEvent> _getEventsForDay(DateTime day) {
    return ref.watch(calendarNotifierProvider).kEvents[day] ?? [];
  }

  @override
  Widget build(BuildContext context) {
    final selectedEventsForDay = _getEventsForDay(_selectedDay);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(SmartEventEditor.getRoute());
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48),
        child: Column(
          children: [
            TableCalendar<SmartEvent>(
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              focusedDay: _selectedDay,
              currentDay: _focusedDay,
              selectedDayPredicate: (day) {
                return isSameDay(_selectedDay, day);
              },
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                });
              },
              calendarFormat: _calendarFormat,
              onFormatChanged: (format) {
                setState(() {
                  _calendarFormat = format;
                });
              },
              eventLoader: _getEventsForDay,
            ),
            if (selectedEventsForDay.isEmpty)
              const Text('No events for this day')
            else
              Expanded(
                child: ListView.builder(
                  itemCount: selectedEventsForDay.length,
                  itemBuilder: (context, index) {
                    final value = selectedEventsForDay;

                    return Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        onTap: () {
                          Navigator.of(context).push(
                            SmartEventEditor.getRoute(event: value[index]),
                          );
                        },
                        title: Text('${value[index]}'),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
