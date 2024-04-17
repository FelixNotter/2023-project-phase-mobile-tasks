import 'package:flutter/material.dart';
import "opening_screen.dart";
import "create_new_task_page.dart";
import 'to_do_lists_page.dart';
import 'task_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    routes: {

      "/tasks":(context) => const Task(), 
      "/create":(context) => const TODO(),
      "/details":(context) => const Detail(),

    },
  ));
  }
}

