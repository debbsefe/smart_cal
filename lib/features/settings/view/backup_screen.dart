import 'package:flutter/material.dart';
import 'package:smart_cal/features/settings/view/settings_screen.dart';

class BackupScreen extends StatelessWidget {
  const BackupScreen({super.key});

  static const routeName = '/backup';

  static Route<void> open() {
    return MaterialPageRoute<void>(
      settings: const RouteSettings(name: routeName),
      builder: (_) => const BackupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Backup / Restore'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            SettingsTile(
              leadingIcon: Icons.backup,
              title: 'Cloud Backup',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
