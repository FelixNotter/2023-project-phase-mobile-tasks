import 'package:flutter/material.dart';
import "home.dart";
import "createTask.dart";
import 'tasks.dart';
import 'task_detail.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    routes: {

      "/tasks":(context) => const Task(), 
      "/create":(context) => const TODO(),
      "/details":(context) => const Detail(),

    },
  ));
}


