import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:smart_cal/core/core.dart';
import 'package:smart_cal/core/data/database/database.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: Column(
        children: [
          if (kDebugMode)
            ListTile(
              title: const Text('Open db viewer'),
              onTap: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DriftDbViewer(
                      ref.watch(databaseProvider),
                    ),
                  ),
                );
              },
            ),
        ],
      ),
    );
  }
}
