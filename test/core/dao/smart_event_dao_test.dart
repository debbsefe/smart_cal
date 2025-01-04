import 'package:drift/native.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_cal/core/core.dart';

void main() {
  late Database database;

  setUp(() {
    print('called');
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
    final event = SmartEvent(
      id: '1',
      title: 'test',
      date: DateTime.now(),
      time: TimeOfDay.now(),
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(), /* event properties */
    );

    await database.smartEventDao.insertEvent(event);

    final db = await database.smartEventDao.watchAllEvents().first;

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

    final db = await database.smartEventDao.watchAllEvents().first;

    expect(db.length, 0);
  });
}
