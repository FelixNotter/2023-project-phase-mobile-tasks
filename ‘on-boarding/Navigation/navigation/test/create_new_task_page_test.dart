import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:navigation/create_new_task_page.dart';

void main() {
  testWidgets('create new task page ...', (tester) async {
    await tester.pumpWidget(const MaterialApp(
      home:TODO(),
    ));
     await tester.enterText(
        find.byKey(const ValueKey('main_task')), 'Felix');
    await tester.enterText(
        find.byKey(const ValueKey("desc")), "Today");
    await tester.enterText(
        find.byKey(const ValueKey("due_date")), "14th June,2002");
    await tester.tap(find.byKey(const ValueKey('Add Task')));

    expect(find.text('Felix'), findsOneWidget);
    expect(find.text("Today"), findsOneWidget);
    expect(find.text('14th June,2002'), findsOneWidget);
    expect(find.text('Nothing'), findsNothing);
    expect(find.text('12th June,2002'), findsNothing);


   
  });
}