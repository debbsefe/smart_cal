// ignore_for_file: invalid_annotation_target

import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:smart_cal/core/data/database/database.dart';

part 'progress.freezed.dart';
part 'progress.g.dart';

@UseRowClass(Progress)
class ProgressTable extends Table {
  TextColumn get id => text()();
  TextColumn get entityId => text()();
  TextColumn get status => textEnum<ProgressStatus>()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  DateTimeColumn get completedAt => dateTime()();

  @override
  Set<Column>? get primaryKey => {id};
}

@freezed
abstract class Progress with _$Progress implements Insertable<Progress> {
  const factory Progress({
    required String id,
    required String entityId,
    @JsonKey(unknownEnumValue: ProgressStatus.none)
    required ProgressStatus status,
    required DateTime createdAt,
    required DateTime updatedAt,
    required DateTime completedAt,
  }) = _Progress;

  const Progress._();

  factory Progress.fromJson(Map<String, dynamic> json) =>
      _$ProgressFromJson(json);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ProgressTableCompanion(
      id: Value(id),
      entityId: Value(entityId),
      status: Value(status),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      completedAt: Value(completedAt),
    ).toColumns(nullToAbsent);
  }
}

enum ProgressStatus {
  none,
  completed,
}
