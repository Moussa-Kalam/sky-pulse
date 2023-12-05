import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:skypulse/registration.dart';
import 'package:skypulse/welcomescreen.dart';

void main() {
  testWidgets('HomePage Widget Test', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: HomePage(),
      ),
    );

    // Test if the app bar is rendered.
    expect(find.byType(AppBar), findsNothing);

    // Test if the welcome image is present.
    expect(find.byType(Image), findsOneWidget);

    // Test if the SkyPulse text is present.
    expect(find.text('SkyPulse'), findsOneWidget);

    // Test if the welcome message is present.
    expect(
      find.text('Welcome to your weather companion.Your weather adventure awaits you!'),
      findsOneWidget,
    );

    // Test if the "Get Started" button is present.
    expect(find.text('Get Started'), findsOneWidget);

    // Test if the "Sign In" button is present.
    expect(find.text('Sign In'), findsOneWidget);

    // Tap on the "Get Started" button and check if the navigation is correct.
    await tester.tap(find.text('Get Started'));
    await tester.pumpAndSettle();
    expect(find.byType(SignUp), findsOneWidget);

    // Tap on the "Sign In" button and check if the navigation is correct.
    await tester.tap(find.text('Sign In'), warnIfMissed: false);
    await tester.pumpAndSettle();
    expect(find.widgetWithText(Container, 'Sign In'), findsOneWidget);
  });
}