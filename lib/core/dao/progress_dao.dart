import 'package:drift/drift.dart';
import 'package:smart_cal/core/core.dart';

part 'progress_dao.g.dart';

@DriftAccessor(tables: [ProgressTable])
class ProgressDao extends DatabaseAccessor<Database> with _$ProgressDaoMixin {
  ProgressDao(super.db);

  void insertProgress(Progress progress) {
    into(progressTable).insertOnConflictUpdate(progress);
  }

  void markAsCompleted(String id) {
    (update(progressTable)..where((t) => t.id.equals(id))).write(
      const ProgressTableCompanion(status: Value(ProgressStatus.completed)),
    );
  }
}
