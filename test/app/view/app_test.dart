import 'package:drift/native.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_cal/app/app.dart';
import 'package:smart_cal/core/core.dart';

void main() {
  late Database db;

  setUp(() {
    db = Database('db', 'test123', e: NativeDatabase.memory());
  });

  tearDown(() async {
    await db.close();
  });

  testWidgets('renders App', (tester) async {
    await tester.pumpWidget(
      App(
        container: ProviderContainer(
          overrides: [
            databaseProvider.overrideWithValue(
              db,
            ),
          ],
        ),
      ),
    );
  });
}
