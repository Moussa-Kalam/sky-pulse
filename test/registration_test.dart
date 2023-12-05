import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:skypulse/registration.dart';

void main() {
  testWidgets('SignUp Widget Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: SignUp()));

    // Test if at least one instance of "Create Account" text is present.
    expect(find.text('Create Account'), findsWidgets);

    // Test if the "Go ahead and sign up..." text is present.
    expect(
      find.text('Go ahead and sign up, begin your weather adventure!'),
      findsOneWidget,
    );

    // Test if at least one instance of the Email and Password fields is present.
    expect(find.widgetWithText(TextField, 'Email'), findsWidgets);
    expect(find.widgetWithText(TextField, 'Password'), findsWidgets);

    // Test if at least one instance of the "Create Account" button is present.
    expect(find.widgetWithText(ElevatedButton, 'Create Account'), findsWidgets);

    // Test if the "I already have an account!" and "Sign in" text and button are present.
    expect(find.text("I already have an account!"), findsOneWidget);
    expect(find.text("Sign in"), findsOneWidget);

    // Tap on the "Create Account" button by finding the first matching widget.
    await tester.tap(find.byType(ElevatedButton).first);

    // Pump the widget after the tap.
    await tester.pump();
  });
}
