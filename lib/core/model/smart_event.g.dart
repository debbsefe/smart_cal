// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smart_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SmartEvent _$SmartEventFromJson(Map<String, dynamic> json) => _SmartEvent(
      id: json['id'] as String,
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      startTime: const TimeOfDayJsonConverter()
          .fromJson((json['startTime'] as num).toInt()),
      endTime: const TimeOfDayJsonConverter()
          .fromJson((json['endTime'] as num).toInt()),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      externalEventId: json['externalEventId'] as String,
      externalCalendarId: json['externalCalendarId'] as String?,
      calendarColor: (json['calendarColor'] as num?)?.toInt() ?? 0xFF2196F3,
      description: json['description'] as String?,
      isRecurring: json['isRecurring'] as bool?,
      recurringType:
          $enumDecodeNullable(_$RecurringTypeEnumMap, json['recurringType']),
      adjustBasedOnCompletion: json['adjustBasedOnCompletion'] as bool?,
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      recurringEndDateTime: json['recurringEndDateTime'] == null
          ? null
          : DateTime.parse(json['recurringEndDateTime'] as String),
    );

Map<String, dynamic> _$SmartEventToJson(_SmartEvent instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'date': instance.date.toIso8601String(),
      'startTime': const TimeOfDayJsonConverter().toJson(instance.startTime),
      'endTime': const TimeOfDayJsonConverter().toJson(instance.endTime),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'externalEventId': instance.externalEventId,
      'externalCalendarId': instance.externalCalendarId,
      'calendarColor': instance.calendarColor,
      'description': instance.description,
      'isRecurring': instance.isRecurring,
      'recurringType': _$RecurringTypeEnumMap[instance.recurringType],
      'adjustBasedOnCompletion': instance.adjustBasedOnCompletion,
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'recurringEndDateTime': instance.recurringEndDateTime?.toIso8601String(),
    };

const _$RecurringTypeEnumMap = {
  RecurringType.daily: 'daily',
  RecurringType.weekly: 'weekly',
  RecurringType.monthly: 'monthly',
  RecurringType.yearly: 'yearly',
};
