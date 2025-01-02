import 'package:flutter/material.dart';
import 'package:smart_cal/core/core.dart';
import 'package:smart_cal/home/home.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = CustomTheme();

    return ProviderScope(
      child: MaterialApp(
        theme: theme.defaultThemeData(),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const HomeScreen(),
      ),
    );
  }
}
