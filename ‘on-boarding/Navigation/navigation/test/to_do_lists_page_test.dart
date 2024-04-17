import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:navigation/to_do_lists_page.dart';

void main() {
  testWidgets('Todo List Page tests', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home: Task(),
    ));

    final button = find.text('Create task');
    final pics = find.byType(Image);
    
   
    expect(button, findsOne);
    expect(pics, findsOne);
  });
}