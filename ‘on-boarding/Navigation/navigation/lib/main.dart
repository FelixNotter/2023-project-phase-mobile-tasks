import 'package:flutter/material.dart';
import "presentation/pages/opening_screen.dart";
import "presentation/pages/create_new_task_page.dart";
import 'presentation/pages/to_do_lists_page.dart';
import 'presentation/pages/task_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Home(),
    routes: {
      "/tasks":(context) => const Task(), 
      "/create":(context) => const TODO(),
      "/details":(context) => const Detail(),
    },
  ));
  }
}

