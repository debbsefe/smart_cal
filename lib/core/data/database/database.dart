import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:flutter/material.dart' hide Table;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:smart_cal/core/dao/smart_event_dao.dart';
import 'package:smart_cal/core/model/smart_event.dart';
import 'package:smart_cal/core/provider/support_dir_provider.dart';
import 'package:sqlcipher_flutter_libs/sqlcipher_flutter_libs.dart';
// ignore: depend_on_referenced_packages
import 'package:sqlite3/open.dart';

part 'database.g.dart';

final _log = Logger('Database');

final databaseProvider = Provider.autoDispose((ref) {
  final dbName = '${ref.watch(supportDirProvider).path}/smart_cal.sqlite';
  // TODO(anyone): replace this with a real password
  const password = 'not_a_real_password';
  final database = Database(
    dbName,
    password,
  );

  ref.onDispose(() {
    database.close();
    _log.fine('Main Database was closed');
  });

  return database;
});

@DriftDatabase(
  tables: [
    SmartEventTable,
  ],
  daos: [
    SmartEventDao,
  ],
)
class Database extends _$Database {
  Database(String dbName, String password, {QueryExecutor? e})
      : super(e ?? _openDatabase(dbName, password));

  @override
  MigrationStrategy get migration => MigrationStrategy(
        onCreate: (m) async {
          await m.createAll();
        },
        onUpgrade: (m, from, to) async {
          for (final table in allTables) {
            await m.deleteTable(table.actualTableName);
          }
          await m.createAll();
        },
      );

  @override
  int get schemaVersion => 4;
}

NativeDatabase _openDatabase(String dbPath, String password) {
  open.overrideFor(OperatingSystem.android, openCipherOnAndroid);
  return NativeDatabase(
    File(dbPath),
    setup: (rawDb) {
      final hasEncryptionSupport =
          rawDb.select('PRAGMA cipher_version;').isNotEmpty;
      if (!hasEncryptionSupport) {
        throw Exception('database has no encryption support');
      }
      if (password.trim().isEmpty) {
        throw Exception('Database password must never be empty');
      }

      rawDb.execute("PRAGMA key = '$password';");
    },
  );
}
