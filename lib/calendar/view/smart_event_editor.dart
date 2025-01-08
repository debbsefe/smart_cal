import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:smart_cal/calendar/notifier/calendar_notifier.dart';
import 'package:smart_cal/core/core.dart';
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
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  DateTime initialDate = DateTime.now();
  late DateTime firstDate =
      DateTime.now().subtract(const Duration(days: 36525));
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
      _selectedDate = widget.event!.date;
      _selectedTime = widget.event!.time;
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
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.createNewEvent),
        actions: [
          if (widget.event != null)
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () async {
                await ref.watch(calendarNotifierProvider.notifier).softDelete(
                      widget.event!.id,
                      widget.event!.date,
                    );
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
              decoration: InputDecoration(
                labelText: l10n.eventTitle,
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(
                labelText: l10n.eventDescription,
              ),
            ),
            GestureDetector(
              onTap: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: firstDate,
                  lastDate: lastDate,
                );
                setState(() {
                  _selectedDate = date!;
                });
              },
              child: Text(
                '${l10n.eventDate}: '
                '${DateFormat.yMMMMd().format(_selectedDate)}',
              ),
            ),
            GestureDetector(
              onTap: () async {
                final time = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                  initialEntryMode: TimePickerEntryMode.input,
                );
                setState(() {
                  _selectedTime = time!;
                });
              },
              child: Text(
                '${l10n.eventTime} ${_selectedTime.format(context)}',
              ),
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
            ElevatedButton(
              onPressed: () {
                if (_titleController.text.isNotEmpty) {
                  ref.watch(calendarNotifierProvider.notifier).saveEvent(
                        SmartEvent(
                          id: widget.event?.id ?? const Uuid().v4(),
                          title: _titleController.text,
                          description: _descriptionController.text,
                          date: _selectedDate,
                          time: _selectedTime,
                          adjustBasedOnCompletion: adjustBasedOnCompletion,
                          isRecurring: recurring,
                          recurringType: recurringType,
                          createdAt: widget.event?.createdAt ?? DateTime.now(),
                          updatedAt: DateTime.now(),
                        ),
                      );

                  Navigator.of(context).pop();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(l10n.titleCannotBeEmpty),
                    ),
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
