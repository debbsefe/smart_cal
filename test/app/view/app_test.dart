// import 'package:flutter_test/flutter_test.dart';
// import 'package:smart_cal/app/app.dart';
// import 'package:smart_cal/core/core.dart';

// import '../../fake/fake_database.dart';
// import '../../helpers/helpers.dart';

// void main() {
//   late final Database db = FakeDatabase();

//   testWidgets('renders App', (tester) async {
//     await tester.pumpApp(
//       App(
//         container: ProviderContainer(
//           overrides: [
//             databaseProvider.overrideWithValue(
//               db,
//             ),
//           ],
//         ),
//       ),
//     );

//     await db.close();

//     await tester.pumpAndSettle();
//   });
// }
