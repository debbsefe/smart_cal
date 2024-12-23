import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SmartEventEditor extends StatefulWidget {
  const SmartEventEditor({super.key});

  static PageRoute<void> getRoute() {
    const settings = RouteSettings(name: '/smart_event_editor');

    return MaterialPageRoute<void>(
      builder: (_) => const SmartEventEditor(),
      settings: settings,
    );
  }

  @override
  State<SmartEventEditor> createState() => _SmartEventEditorState();
}

class _SmartEventEditorState extends State<SmartEventEditor> {
  @override
  void initState() {
    super.initState();
  }

  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  DateTime initialDate = DateTime.now();
  late DateTime firstDate =
      DateTime.now().subtract(const Duration(days: 36525));
  DateTime lastDate = DateTime.now().add(const Duration(days: 36525));

  bool adjustBasedOnCompletion = false;
  bool recurring = false;
  RecurringType? recurringType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create new event'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextField(
              decoration: InputDecoration(
                labelText: 'Event name',
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Event notes',
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
                'Event date: ${DateFormat.yMMMMd().format(_selectedDate)}',
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
                'Event Time: ${_selectedTime.format(context)}',
              ),
            ),
            SwitchListTile(
              value: adjustBasedOnCompletion,
              onChanged: (value) {
                setState(() {
                  adjustBasedOnCompletion = value;
                });
              },
              title: const Text('Adjust based on completion'),
            ),
            SwitchListTile(
              value: recurring,
              onChanged: (value) {
                setState(() {
                  recurring = value;
                });
              },
              title: const Text('Recurring Event'),
            ),
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
                Navigator.of(context).pop();
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}

enum RecurringType {
  daily,
  weekly,
  monthly,
  yearly,
}
