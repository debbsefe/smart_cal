import 'package:clock/clock.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_cal/core/core.dart';

void main() {
  late Database database;

  setUp(() {
    database = Database(
      'db',
      'test123',
      e: NativeDatabase.memory(),
    );
  });

  tearDown(() async {
    await database.close();
  });

  test('insertEvent should insert event into database', () async {
    final startDate = clock.now();
    final endDate = startDate.add(const Duration(days: 1));
    final event = SmartEvent(
      id: '1',
      title: 'test',
      date: startDate,
      time: TimeOfDay.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(), /* event properties */
    );

    await database.smartEventDao.insertEvent(event);

    final db = await database.smartEventDao
        .watchEventsForDateRange(startDate: endDate, endDate: endDate)
        .first;

    expect(db.length, 1);
  });

  test('deleteEvent should delete event from database', () async {
    // Arrange
    final event = SmartEvent(
      id: '1',
      title: 'test',
      date: DateTime.now(),
      time: TimeOfDay.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(), /* event properties */
    );

    await database.smartEventDao.deleteEvent(event);

    // final db = await database.smartEventDao.deleteEvent(event);

    //  expect(db.length, 0);
  });
}
