// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'smart_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SmartEventImpl _$$SmartEventImplFromJson(Map<String, dynamic> json) =>
    _$SmartEventImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      date: DateTime.parse(json['date'] as String),
      time: const TimeOfDayJsonConverter()
          .fromJson((json['time'] as num).toInt()),
      description: json['description'] as String?,
      isRecurring: json['isRecurring'] as bool?,
      recurringType:
          $enumDecodeNullable(_$RecurringTypeEnumMap, json['recurringType']),
      adjustBasedOnCompletion: json['adjustBasedOnCompletion'] as bool?,
    );

Map<String, dynamic> _$$SmartEventImplToJson(_$SmartEventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'date': instance.date.toIso8601String(),
      'time': const TimeOfDayJsonConverter().toJson(instance.time),
      'description': instance.description,
      'isRecurring': instance.isRecurring,
      'recurringType': _$RecurringTypeEnumMap[instance.recurringType],
      'adjustBasedOnCompletion': instance.adjustBasedOnCompletion,
    };

const _$RecurringTypeEnumMap = {
  RecurringType.daily: 'daily',
  RecurringType.weekly: 'weekly',
  RecurringType.monthly: 'monthly',
  RecurringType.yearly: 'yearly',
};
