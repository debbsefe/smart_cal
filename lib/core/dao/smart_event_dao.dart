import 'package:drift/drift.dart';
import 'package:smart_cal/core/core.dart';

part 'smart_event_dao.g.dart';

@DriftAccessor(tables: [SmartEventTable])
class SmartEventDao extends DatabaseAccessor<Database>
    with _$SmartEventDaoMixin {
  SmartEventDao(super.db);

  Future<void> insertEvent(SmartEvent event) async {
    await into(smartEventTable).insertOnConflictUpdate(event);
  }

  Stream<List<SmartEvent>> watchEventsForDateRange({
    required DateTime startDate,
    required DateTime endDate,
  }) {
    return select(smartEventTable).watch().map(
      (rows) {
        return _replicateRecurringEvents(rows, startDate, endDate);
      },
    );
  }

  Future<void> softDeleteEvent(String id, DateTime deletedAt) async {
    final existing = await (select(smartEventTable)
          ..where((t) => t.id.equals(id)))
        .getSingle();

    await insertEvent(
      existing.copyWith(
        recurringEndDateTime: deletedAt,
        deletedAt: deletedAt,
      ),
    );
  }

  void permanentlyDeleteEvent(String id) {
    delete(smartEventTable).where((t) => t.id.equals(id));
  }

  List<SmartEvent> _replicateRecurringEvents(
    List<SmartEvent> events,
    DateTime startDate,
    DateTime endDate,
  ) {
    final result = <SmartEvent>[];

    for (final event in events) {
      if ((event.isRecurring ?? false) && event.recurringType != null) {
        if (event.deletedAt != null && event.deletedAt!.isBefore(event.date)) {
          // break out of the loop is event is deleted
          break;
        }
        // Handle next recurrence
        var nextOccurrence = event.date;
        while (nextOccurrence.isBefore(event.recurringEndDateTime ?? endDate)) {
          if (nextOccurrence.isAfter(startDate)) {
            result.add(event.copyWith(date: nextOccurrence));
          }
          nextOccurrence =
              getNextOccurrence(nextOccurrence, event.recurringType!);
        }
      } else {
        // Non-recurring event, just add it
        result.add(event);
      }
    }

    return result;
  }

  DateTime getNextOccurrence(DateTime date, RecurringType recurringType) {
    switch (recurringType) {
      case RecurringType.daily:
        return DateTime(date.year, date.month, date.day + 1);
      case RecurringType.weekly:
        return DateTime(date.year, date.month, date.day + 7);
      case RecurringType.monthly:
        return DateTime(date.year, date.month + 1, date.day);
      case RecurringType.yearly:
        return DateTime(date.year + 1, date.month, date.day);
    }
  }
}
