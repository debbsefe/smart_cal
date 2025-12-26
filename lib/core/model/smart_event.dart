// ignore_for_file: invalid_annotation_target

import 'package:device_calendar/device_calendar.dart';
import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_cal/core/core.dart';

part 'smart_event.freezed.dart';
part 'smart_event.g.dart';

@UseRowClass(SmartEvent)
class SmartEventTable extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get start => dateTime()();
  DateTimeColumn get end => dateTime()();
  BoolColumn get isRecurring => boolean().nullable()();
  BoolColumn get adjustBasedOnCompletion => boolean().nullable()();
  TextColumn get recurringType => textEnum<RecurringType>().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  DateTimeColumn get deletedAt => dateTime().nullable()();
  DateTimeColumn get recurringEndDateTime => dateTime().nullable()();
  TextColumn get externalCalendarId => text().nullable()();
  TextColumn get externalEventId => text()();
  IntColumn get calendarColor => integer().nullable()();
  BoolColumn get allDay => boolean().nullable()();
  TextColumn get location => text().nullable()();

  @override
  Set<Column>? get primaryKey => {externalEventId};
}

@freezed
abstract class SmartEvent with _$SmartEvent implements Insertable<SmartEvent> {
  const factory SmartEvent({
    required String id,
    required String title,
    required DateTime start,
    required DateTime end,
    required DateTime createdAt,
    required DateTime updatedAt,
    // event id of an external calendar event, is the same value as id for
    // smart events created in app
    required String externalEventId,
    bool? allDay,
    String? location,
    // calendar id of an external calendar event, can be null for new events,
    // created in app
    String? externalCalendarId,
    @Default(0xFF2196F3) int? calendarColor,
    String? description,
    bool? isRecurring,
    RecurringType? recurringType,
    bool? adjustBasedOnCompletion,
    DateTime? deletedAt,
    DateTime? recurringEndDateTime,
  }) = _SmartEvent;

  const SmartEvent._();

  factory SmartEvent.fromJson(Map<String, dynamic> json) =>
      _$SmartEventFromJson(json);

  @override
  String toString() => title;

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return SmartEventTableCompanion(
      id: Value(id),
      title: Value(title),
      start: Value(start),
      end: Value(end),
      allDay: Value(allDay),
      location: Value(location),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      externalEventId: Value(externalEventId),
      externalCalendarId: Value(externalCalendarId),
      calendarColor: Value(calendarColor),
      description: Value(description),
      isRecurring: Value(isRecurring),
      recurringType: Value(recurringType),
      adjustBasedOnCompletion: Value(adjustBasedOnCompletion),
      deletedAt: Value(deletedAt),
      recurringEndDateTime: Value(recurringEndDateTime),
    ).toColumns(nullToAbsent);
  }
}

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

enum RecurringType { daily, weekly, monthly, yearly }

extension RecurrenceFrequencyExtension on RecurrenceFrequency {
  RecurringType get toRecurringType {
    switch (this) {
      case RecurrenceFrequency.Daily:
        return RecurringType.daily;
      case RecurrenceFrequency.Weekly:
        return RecurringType.weekly;
      case RecurrenceFrequency.Monthly:
        return RecurringType.monthly;
      case RecurrenceFrequency.Yearly:
        return RecurringType.yearly;
    }
  }
}
