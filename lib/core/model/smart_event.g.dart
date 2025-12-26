// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smart_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SmartEvent _$SmartEventFromJson(Map<String, dynamic> json) => _SmartEvent(
  id: json['id'] as String,
  title: json['title'] as String,
  start: DateTime.parse(json['start'] as String),
  end: DateTime.parse(json['end'] as String),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
  externalEventId: json['externalEventId'] as String,
  allDay: json['allDay'] as bool?,
  location: json['location'] as String?,
  externalCalendarId: json['externalCalendarId'] as String?,
  calendarColor: (json['calendarColor'] as num?)?.toInt() ?? 0xFF2196F3,
  description: json['description'] as String?,
  isRecurring: json['isRecurring'] as bool?,
  recurringType: $enumDecodeNullable(
    _$RecurringTypeEnumMap,
    json['recurringType'],
  ),
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
      'start': instance.start.toIso8601String(),
      'end': instance.end.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'externalEventId': instance.externalEventId,
      'allDay': instance.allDay,
      'location': instance.location,
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
