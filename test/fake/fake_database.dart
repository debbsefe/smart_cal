import 'package:mocktail/mocktail.dart';
import 'package:smart_cal/core/core.dart';

class FakeDatabase extends Fake implements Database {
  final _smartEventDao = MockSmartEventDao();

  @override
  SmartEventDao get smartEventDao => _smartEventDao;
}

class MockSmartEventDao extends Mock implements SmartEventDao {}
