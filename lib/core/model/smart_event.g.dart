// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smart_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SmartEvent _$SmartEventFromJson(Map<String, dynamic> json) => _SmartEvent(
      id: json['id'] as String,
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      time: const TimeOfDayJsonConverter()
          .fromJson((json['time'] as num).toInt()),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
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
      'time': const TimeOfDayJsonConverter().toJson(instance.time),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
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
