import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:skypulse/loginpage.dart';

void main() {
  testWidgets('LogIn Widget Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: LogIn()));

    // Test if at least one instance of "Log In" text is present.
    expect(find.text('Log In'), findsWidgets);

    // Test if the "Happy to see you back!" text is present.
    expect(find.text('Happy to see you back!'), findsOneWidget);

    // Test if the Email and Password fields is present.
    expect(find.widgetWithText(TextField, 'Email'), findsWidgets);
    expect(find.widgetWithText(TextField, 'Password'), findsWidgets);

    // Test if the "Sign In" button is present.
    expect(find.text('Sign In'), findsOneWidget);

    // Test if the "Forgot Password" text button is present.
    expect(find.text('Forgot Password'), findsOneWidget);

    // Test if the "Don't have an account?" and "Sign up" text and button are present.
    expect(find.text("Don't have an account?"), findsOneWidget);
    expect(find.text("Sign up"), findsOneWidget);
    
  });
}