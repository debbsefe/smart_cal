// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Progress _$ProgressFromJson(Map<String, dynamic> json) => _Progress(
      id: json['id'] as String,
      entityId: json['entityId'] as String,
      status: $enumDecode(
        _$ProgressStatusEnumMap,
        json['status'],
        unknownValue: ProgressStatus.none,
      ),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      completedAt: DateTime.parse(json['completedAt'] as String),
    );

Map<String, dynamic> _$ProgressToJson(_Progress instance) => <String, dynamic>{
      'id': instance.id,
      'entityId': instance.entityId,
      'status': _$ProgressStatusEnumMap[instance.status],
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'completedAt': instance.completedAt.toIso8601String(),
    };

const _$ProgressStatusEnumMap = {
  ProgressStatus.none: 'none',
  ProgressStatus.completed: 'completed',
};
