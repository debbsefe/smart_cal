// ignore_for_file: invalid_annotation_target

import 'package:drift/drift.dart' hide JsonKey;
import 'package:flutter/material.dart' hide Column, Table;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_cal/core/data/database/database.dart';

part 'smart_event.freezed.dart';
part 'smart_event.g.dart';

@UseRowClass(SmartEvent)
class SmartEventTable extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get description => text().nullable()();
  DateTimeColumn get date => dateTime()();
  IntColumn get time => integer().map(const TimeOfDayConverter())();
  BoolColumn get isRecurring => boolean().nullable()();
  BoolColumn get adjustBasedOnCompletion => boolean().nullable()();
  TextColumn get recurringType => textEnum<RecurringType>().nullable()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();

  @override
  Set<Column>? get primaryKey => {id};
}

class TimeOfDayConverter extends TypeConverter<TimeOfDay, int> {
  const TimeOfDayConverter();

  /// Converts an integer from the database (total minutes)
  /// to a TimeOfDay object.
  @override
  TimeOfDay fromSql(int fromDb) {
    return toTimeOfDay(fromDb);
  }

  /// Converts a TimeOfDay object to an integer (total minutes)
  /// for the database.
  @override
  int toSql(TimeOfDay value) {
    return fromTimeOfDay(value);
  }
}

class TimeOfDayJsonConverter extends JsonConverter<TimeOfDay, int> {
  const TimeOfDayJsonConverter();

  @override
  TimeOfDay fromJson(int json) {
    return toTimeOfDay(json);
  }

  @override
  int toJson(TimeOfDay object) {
    return fromTimeOfDay(object);
  }
}

TimeOfDay toTimeOfDay(int time) =>
    TimeOfDay(hour: time ~/ 60, minute: time % 60);
int fromTimeOfDay(TimeOfDay timeOfDay) =>
    timeOfDay.hour * 60 + timeOfDay.minute;

@freezed
class SmartEvent with _$SmartEvent implements Insertable<SmartEvent> {
  const factory SmartEvent({
    required String id,
    required String title,
    required DateTime date,
    @TimeOfDayJsonConverter() required TimeOfDay time,
    required DateTime createdAt,
    required DateTime updatedAt,
    String? description,
    bool? isRecurring,
    RecurringType? recurringType,
    bool? adjustBasedOnCompletion,
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
      date: Value(date),
      time: Value(time),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      description:
          description == null ? const Value.absent() : Value(description),
      isRecurring:
          isRecurring == null ? const Value.absent() : Value(isRecurring),
      recurringType:
          recurringType == null ? const Value.absent() : Value(recurringType),
      adjustBasedOnCompletion: adjustBasedOnCompletion == null
          ? const Value.absent()
          : Value(adjustBasedOnCompletion),
    ).toColumns(nullToAbsent);
  }
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
