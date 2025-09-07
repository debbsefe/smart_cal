import 'package:drift_db_viewer/drift_db_viewer.dart';
import 'package:flutter/material.dart';
import 'package:smart_cal/core/core.dart';
import 'package:smart_cal/features/settings/settings.dart';

class SettingsScreen extends ConsumerWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 96, horizontal: 16),
      child: Column(
        children: [
          const Text('App Settings'),
          const SizedBox(height: 16),
          SettingsTile(
            leadingIcon: Icons.storage,
            title: 'Open db viewer',
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
          SettingsTile(
            leadingIcon: Icons.backup,
            title: 'Backup / Restore',
            onTap: () {
              Navigator.push<void>(
                context,
                BackupScreen.open(),
              );
            },
          ),
          SettingsTile(
            leadingIcon: Icons.import_export,
            title: 'Sync Calendar to SmartCal',
            onTap: () {
              Navigator.push<void>(
                context,
                LocalCalendarScreen.open(),
              );
            },
          ),
        ],
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  const SettingsTile({
    required this.leadingIcon,
    required this.title,
    required this.onTap,
    super.key,
  });
  final IconData leadingIcon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          leadingIcon,
          color: Theme.of(context).colorScheme.primary,
        ),
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_rounded),
        onTap: onTap,
      ),
    );
  }
}
