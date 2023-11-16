import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bmi_calculator/main.dart'; // Replace with the actual import path

void main() {
  testWidgets('BMI Calculator UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(BMICalculator());

    // Verify that the initial state is as expected.
    expect(find.text('BMI CALCULATOR'), findsOneWidget);
    expect(find.text('Body Text'), findsOneWidget);
    expect(find.byIcon(Icons.add), findsOneWidget);

    // Tap the FloatingActionButton and check if it triggers the onPressed callback.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that the onPressed callback is triggered.
    // You can add more detailed tests based on the expected behavior.
  });
}
