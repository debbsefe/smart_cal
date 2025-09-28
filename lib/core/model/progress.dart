// ignore_for_file: invalid_annotation_target

import 'package:drift/drift.dart' hide JsonKey;

@DataClassName('Progress')
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

enum ProgressStatus { none, completed }
