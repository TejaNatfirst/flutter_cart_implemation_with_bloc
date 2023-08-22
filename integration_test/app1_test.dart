import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:interviewtest/main.dart' as app;

// TODO 5: Import the app that you want to test
void main() {
  group('App Test', () {
    //TODO 3: Add the IntegrationTestWidgetFlutterBinding and .ensureIntialized
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();

    //TODO 4: Create your test case
    testWidgets('full app test', (tester) async {
      //TODO 6: execute the app.main() function
      app.main();

      //TODO 7: Wait until the app has settled
      await tester.pumpAndSettle();

      //TODO 8: Create finders for email, password and login
      final emailFormField = find.byType(TextFormField).first;
      final passwordFormField = find.byType(TextFormField).last;
      final loginButton = find.byType(MaterialButton).first;
      //TODO 9: Enter text for email address
      await tester.enterText(emailFormField, 'flutter@kmail.com');
      await tester.enterText(passwordFormField, 'flutter123');
      await tester.pumpAndSettle();

      await tester.tap(loginButton);
      await tester.pumpAndSettle();

      final firstCheckbox = find.byType(Checkbox).first;
      expect(
        tester.getSemantics(firstCheckbox),
        matchesSemantics(
            hasTapAction: true,
            hasCheckedState: true,
            isChecked: false,
            hasEnabledState: true,
            isEnabled: true,
            isFocusable: true),
      );

      await tester.tap(firstCheckbox);
      await tester.pumpAndSettle();

            expect(
        tester.getSemantics(firstCheckbox),
        matchesSemantics(
            hasTapAction: true,
            hasCheckedState: true,
            isChecked: true,
            hasEnabledState: true,
            isEnabled: true,
            isFocusable: true),
      );
    });
  });
}
  



//TODO 10: Enter text for password
//TODO 11: Tap on the login button and wait till it settled
//TODO 12: Find the first checkbox in the screen
//TODO 13: Check the semantics of the checkbox if it is not checked
//TODO 13: Tap on the checkbox and wait till it settled
//TODO 14: Expect the result to be checked
// });
// });