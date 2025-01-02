import 'package:flutter/material.dart';

class SmartEvent {
  const SmartEvent({
    required this.id,
    required this.title,
    required this.date,
    required this.time,
    this.description,
    this.isRecurring = false,
    this.recurringType,
    this.adjustBasedOnCompletion = false,
  });
  final String title;
  final String? description;
  final DateTime date;
  final TimeOfDay time;
  final bool isRecurring;
  final RecurringType? recurringType;
  final bool adjustBasedOnCompletion;
  final String id;

  SmartEvent copyWith({
    String? id,
    String? title,
    String? description,
    DateTime? date,
    TimeOfDay? time,
    bool? isRecurring,
    RecurringType? recurringType,
    bool? adjustBasedOnCompletion,
  }) {
    return SmartEvent(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      date: date ?? this.date,
      time: time ?? this.time,
      isRecurring: isRecurring ?? this.isRecurring,
      recurringType: recurringType ?? this.recurringType,
      adjustBasedOnCompletion:
          adjustBasedOnCompletion ?? this.adjustBasedOnCompletion,
    );
  }

  @override
  String toString() => title;
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

enum RecurringType {
  daily,
  weekly,
  monthly,
  yearly,
}
