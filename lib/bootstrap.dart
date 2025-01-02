import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:smart_cal/core/core.dart';
import 'package:smart_cal/core/provider/support_dir_provider.dart';

Future<void> bootstrap(
  FutureOr<Widget> Function(ProviderContainer container) builder,
) async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final supportDir = await getApplicationSupportDirectory();

  final container = ProviderContainer(
    overrides: [
      supportDirProvider.overrideWithValue(supportDir),
    ],
  );

  runApp(await builder(container));
}
