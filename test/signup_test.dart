// ignore: file_names
import 'package:skypulse/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';


void main() {
  testWidgets('SignupPage UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: SignupPage()));

    // Test if at least one instance of "Create Account" text is present.
    expect(find.text('Create Account'), findsWidgets);

    // Test if the "Go ahead and sign up..." text is present.
    expect(
      find.text('Go ahead and sign up, begin your weather adventure!'),
      findsOneWidget,
    );

    // Test if at least one instance of the Username, Email, Password, and Confirm Password fields is present.
    expect(find.widgetWithText(TextField, 'Username'), findsWidgets);
    expect(find.widgetWithText(TextField, 'Email'), findsWidgets);
    expect(find.widgetWithText(TextField, 'Password'), findsWidgets);
    expect(find.widgetWithText(TextField, 'Confirm password'), findsWidgets);

    // Test if at least one instance of the "Create Account" button is present.
    expect(find.text('Create Account'), findsWidgets);

    // Test if the "I already have an account!" and "Sign in" text and button are present.
    expect(find.text("I already have an account!"), findsOneWidget);
    expect(find.text("Sign in"), findsOneWidget);
  });
}