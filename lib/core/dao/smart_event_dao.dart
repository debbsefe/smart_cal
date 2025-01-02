import 'package:drift/drift.dart';
import 'package:smart_cal/core/core.dart';
import 'package:smart_cal/core/data/database/database.dart';

part 'smart_event_dao.g.dart';

final smartEventDayProvider = StreamProvider.autoDispose(
  (ref) {
    final db = ref.watch(databaseProvider);
    return db.smartEventDao.watchAllEvents();
  },
);

@DriftAccessor(tables: [SmartEventTable])
class SmartEventDao extends DatabaseAccessor<Database>
    with _$SmartEventDaoMixin {
  SmartEventDao(super.db);

  Future<void> insertEvent(SmartEvent event) async {
    await into(smartEventTable).insertOnConflictUpdate(event);
  }

  Future<void> deleteEvent(SmartEvent event) async {
    await delete(smartEventTable).delete(event);
  }

  Stream<List<SmartEvent>> watchAllEvents() {
    return select(smartEventTable).watch();
  }

  Stream<List<SmartEvent>> watchEventsForDay(DateTime day) {
    return (select(smartEventTable)..where((tbl) => tbl.date.equals(day)))
        .watch();
  }
}
