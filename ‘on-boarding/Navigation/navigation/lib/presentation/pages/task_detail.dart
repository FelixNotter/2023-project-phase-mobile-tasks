import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import '../../data/model_data.dart';
import 'package:intl/intl.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  final mainTaskController = TextEditingController();
  final dueDateController = TextEditingController();
  final descController = TextEditingController();

  DateTime? dateTime = DateTime.now();
  void _showDatePicker(args) {
    args.title = mainTaskController.text;
    args.desc = descController.text;
    args.date = dueDateController.text;

    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2002),
      lastDate: DateTime(2030),
      barrierColor: Colors.blueAccent[100],
    ).then((value) {
      setState(() {
      args.date =
            DateFormat('dd MM yyyy').format(value ?? DateTime.now());
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Data;
    mainTaskController.text = args.title;
    descController.text = args.desc;
    dueDateController.text = args.date;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(Icons.more_vert),
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.blueAccent[100],
          ),
        ),
        title: const Text(
          'Task Detail',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/shop.png',
                height: 200, width: 200, fit: BoxFit.cover),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "Title",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Card(
                    color: Colors.grey[100],
                    child: SizedBox(
                      height: 50.0,
                      child: TextField(
                        controller: mainTaskController,
                        maxLines: 1,
                        decoration: const InputDecoration(
                          // Add hint text if desired

                          hintText: "Main Task",

                          border: OutlineInputBorder(
                              // borderSide: BorderSide.none,
                              ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Description",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Card(
                    color: Colors.grey[100],
                    child: SizedBox(
                      height: 60.0,
                      child: TextField(
                        controller: descController,
                        maxLines: 1,
                        decoration: const InputDecoration(
                          // Add hint text if desired
                          hintText: "Description",

                          border: OutlineInputBorder(
                              // borderSide: BorderSide.none,
                              ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "Deadline",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Card(
                    color: Colors.grey[100],
                    child: SizedBox(
                      height: 60.0,
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: dueDateController,
                              enabled: false,
                              maxLines: 1,
                              decoration: const InputDecoration(
                                // Add hint text if desired
                                hintText: "Date",

                                border: OutlineInputBorder(
                                    // borderSide: BorderSide.none,
                                    ),
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () => _showDatePicker(args),
                              icon: Icon(
                                Icons.calendar_month,
                                color: Colors.blueAccent[100],
                              )),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Checkbox(
                            value: args.isCompleted,
                            activeColor: Colors.greenAccent,
                            onChanged: (newval) {
                              setState(() {
                                args.isCompleted = newval!;
                              });
                            }),
                      ),
                      const Text(
                        'Is Completed',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 150,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent[100],
                        ),
                        onPressed: () {
                          Navigator.pop(context, {
                            'main': mainTaskController.text,
                            'desc': descController.text,
                            'date': dueDateController.text,
                            'complete': args.isCompleted,
                          });
                        },
                        child: const Text(
                          "Save",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
