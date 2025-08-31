import 'dart:async';
import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:smart_cal/app_config.dart';
import 'package:smart_cal/core/core.dart';
import 'package:smart_cal/core/provider/support_dir_provider.dart';

Future<void> bootstrap(
  FutureOr<Widget> Function(ProviderContainer container) builder,
  AppConfig config,
) async {
  WidgetsFlutterBinding.ensureInitialized();
  initLogger();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final supportDir = await getApplicationSupportDirectory();

  final container = ProviderContainer(
    overrides: [
      supportDirProvider.overrideWithValue(supportDir),
      appConfigProvider.overrideWithValue(config),
    ],
    observers: [
      AppProviderObserver(),
    ],
  );

  runApp(await builder(container));
}

void initLogger() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
      print('[${record.loggerName}] ${record.level.name}: '
          '${record.time}: ${record.message}'
          '${record.stackTrace != null ? '\n${record.stackTrace}' : ''}');
    }
  });
}
