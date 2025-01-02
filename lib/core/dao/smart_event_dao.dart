import 'package:drift/drift.dart';
import 'package:smart_cal/core/core.dart';
import 'package:smart_cal/core/data/database/database.dart';

part 'smart_event_dao.g.dart';

@DriftAccessor(tables: [SmartEventTable])
class SmartEventDao extends DatabaseAccessor<Database>
    with _$SmartEventDaoMixin {
  SmartEventDao(super.db);
}
