import 'package:smart_cal/app_config.dart';
import 'package:smart_cal/bootstrap.dart';
import 'package:smart_cal/features/app/app.dart';

Future<void> main() async {
  await bootstrap(
    (container) => App(container: container),
    AppConfig(),
  );
}
