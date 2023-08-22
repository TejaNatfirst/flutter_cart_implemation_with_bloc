import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:interviewtest/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end to end testing', () {
    testWidgets('Verify by adding 2 products to cart', (tester) async {
      app.main();

      // final secondScreen = find.byType();
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key("Prod0")));

      await Future.delayed(const Duration(seconds: 2));
      final prod2 = find.byKey(const Key("Prod1"));
      await tester.scrollUntilVisible(prod2, -200.0, maxScrolls: 200);

      await Future.delayed(const Duration(seconds: 5));
      await tester.tap(find.byKey(const Key("Prod1")));

      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key("PlaceOrder")));

      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byType(BackButton).first);
      Future.delayed(const Duration(seconds: 2));
      await tester.pumpAndSettle();
    });

    testWidgets('Verify by adding 10 products to cart', (tester) async {
      app.main();

      // final secondScreen = find.byType();
      await tester.pumpAndSettle();
      await tester.tap(find.byKey(const Key("Prod0")));
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key("Prod0")));
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key("Prod0")));
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key("Prod0")));
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key("Prod0")));
      await Future.delayed(const Duration(seconds: 2));

      final prod2 = find.byKey(const Key("Prod1"));
      await tester.scrollUntilVisible(prod2, -200.0, maxScrolls: 200);

      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key("Prod1")));
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key("Prod1")));
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key("Prod1")));
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key("Prod1")));
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key("Prod1")));
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key("Prod1")));
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key("Prod1")));
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key("Prod1")));
      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byKey(const Key("Prod1")));

      await Future.delayed(const Duration(seconds: 4));
      await tester.tap(find.byKey(const Key("PlaceOrder")));

      await Future.delayed(const Duration(seconds: 2));
      await tester.tap(find.byType(BackButton).first);
      Future.delayed(const Duration(seconds: 4));
      await tester.pumpAndSettle();
    });
  });
}
