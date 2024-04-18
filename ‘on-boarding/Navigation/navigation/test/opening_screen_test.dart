import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:navigation/presentation/pages/opening_screen.dart';

void main() {
  testWidgets('Testing Front Page', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Home() ,
    ));

    final fab = find.byType(FloatingActionButton);
    final pics = find.byType(Image);

    expect(fab, findsOne);
    expect(pics, findsOne);

  });
}