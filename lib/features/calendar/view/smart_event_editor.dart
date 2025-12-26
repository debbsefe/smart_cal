import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_cal/core/core.dart';
import 'package:smart_cal/features/calendar/notifier/calendar_notifier.dart';
import 'package:uuid/uuid.dart';

class SmartEventEditor extends ConsumerStatefulWidget {
  const SmartEventEditor({super.key, this.event});
  final SmartEvent? event;

  static PageRoute<void> getRoute({SmartEvent? event}) {
    const settings = RouteSettings(name: '/smart_event_editor');

    return MaterialPageRoute<void>(
      builder: (_) => SmartEventEditor(event: event),
      settings: settings,
    );
  }

  @override
  ConsumerState<SmartEventEditor> createState() => _SmartEventEditorState();
}

class _SmartEventEditorState extends ConsumerState<SmartEventEditor> {
  DateTime _start = DateTime.now();
  DateTime _end = DateTime.now().add(const Duration(hours: 1));

  DateTime initialDate = DateTime.now();
  late DateTime firstDate = DateTime.now().subtract(
    const Duration(days: 36525),
  );
  DateTime lastDate = DateTime.now().add(const Duration(days: 36525));

  bool? adjustBasedOnCompletion;
  bool? recurring;
  RecurringType? recurringType;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.event != null) {
      _titleController.text = widget.event!.title;
      _descriptionController.text = widget.event!.description ?? '';
      _start = widget.event!.start;
      _end = widget.event!.end;
      adjustBasedOnCompletion = widget.event!.adjustBasedOnCompletion;
      recurring = widget.event!.isRecurring;
      recurringType = widget.event!.recurringType;
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    final startTime = TimeOfDay.fromDateTime(_start);
    final endTime = TimeOfDay.fromDateTime(_end);
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.createNewEvent),
        actions: [
          if (widget.event != null && widget.event?.externalCalendarId == null)
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () async {
                await ref
                    .watch(calendarNotifierProvider.notifier)
                    .deleteEvent(widget.event!);
                // ignore: use_build_context_synchronously
                Navigator.of(context).pop();
              },
            ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(labelText: l10n.eventTitle),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: l10n.eventDescription),
            ),
            GestureDetector(
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: firstDate,
                  lastDate: lastDate,
                );
                if (date != null) {
                  setState(() {
                    _start = DateTime(
                      date.year,
                      date.month,
                      date.day,
                      _start.hour,
                      _start.minute,
                    );
                  });
                }
              },
              child: Text(
                '${l10n.eventDate}: '
                '${DateFormat.yMMMMd().format(_start)}',
              ),
            ),
            GestureDetector(
              onTap: () async {
                final time = await showTimePicker(
                  context: context,
                  initialTime: startTime,
                  initialEntryMode: TimePickerEntryMode.input,
                );
                if (time != null) {
                  setState(() {
                    _start = DateTime(
                      _start.year,
                      _start.month,
                      _start.day,
                      time.hour,
                      time.minute,
                    );
                  });
                }
              },
              child: Text('${l10n.startTime} ${startTime.format(context)}'),
            ),
            GestureDetector(
              onTap: () async {
                final time = await showTimePicker(
                  context: context,
                  initialTime: endTime,
                  initialEntryMode: TimePickerEntryMode.input,
                );
                if (time != null) {
                  setState(() {
                    _end = DateTime(
                      _end.year,
                      _end.month,
                      _end.day,
                      time.hour,
                      time.minute,
                    );
                  });
                }
              },
              child: Text('${l10n.endTime} ${endTime.format(context)}'),
            ),
            SwitchListTile(
              value: adjustBasedOnCompletion ?? false,
              onChanged: (value) {
                setState(() {
                  adjustBasedOnCompletion = value;
                });
              },
              title: Text(l10n.adjustBasedOnCompletionDate),
            ),
            SwitchListTile(
              value: recurring ?? false,
              onChanged: (value) {
                setState(() {
                  recurring = value;
                });
              },
              title: Text(l10n.recurringEvent),
            ),
            if (recurring ?? false)
              DropdownButton<RecurringType>(
                items: RecurringType.values.map((e) {
                  return DropdownMenuItem<RecurringType>(
                    value: e,
                    child: Text(e.name),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    recurringType = value;
                  });
                },
                value: recurringType,
              ),
            // only internal events can be saved
            // external events are read-only
            if (widget.event?.externalCalendarId == null)
              ElevatedButton(
                onPressed: () {
                  if (_titleController.text.isNotEmpty) {
                    if (widget.event != null) {
                      // editting event
                      ref
                          .watch(calendarNotifierProvider.notifier)
                          .editEvent(
                            SmartEvent(
                              id: widget.event!.id,
                              externalEventId: widget.event!.externalEventId,
                              title: _titleController.text,
                              description: _descriptionController.text,
                              start: _start,
                              end: _end,
                              adjustBasedOnCompletion: adjustBasedOnCompletion,
                              isRecurring: recurring,
                              recurringType: recurringType,
                              createdAt: widget.event!.createdAt,
                              updatedAt: DateTime.now(),
                            ),
                          );
                    } else {
                      final id = const Uuid().v4();
                      // new event
                      ref
                          .watch(calendarNotifierProvider.notifier)
                          .createEvent(
                            SmartEvent(
                              id: id,
                              externalEventId: id,
                              title: _titleController.text,
                              description: _descriptionController.text,
                              start: _start,
                              end: _end,
                              adjustBasedOnCompletion: adjustBasedOnCompletion,
                              isRecurring: recurring,
                              recurringType: recurringType,
                              createdAt: DateTime.now(),
                              updatedAt: DateTime.now(),
                            ),
                          );
                    }

                    Navigator.of(context).pop();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(l10n.titleCannotBeEmpty)),
                    );
                  }
                },
                child: Text(l10n.save),
              ),
          ],
        ),
      ),
    );
  }
}
