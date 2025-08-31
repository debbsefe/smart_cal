import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:smart_cal/app_config.dart';
import 'package:smart_cal/bootstrap.dart';
import 'package:smart_cal/features/app/app.dart';

Future<void> main() async {
  await dotenv.load(isOptional: true);
  await bootstrap(
    (container) => App(container: container),
    AppConfig(),
  );
}
