import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "lists.dart";

class TODO extends StatelessWidget {
  final List<Do> cards = const [
    Do(top: "main task name",inside: "UI/UX App design",),
    Do(top: "Due Date",inside: "April 29,2023 12:30AM",icon: Icons.calendar_month_outlined,),
    Do(top: "Description",inside: "First I have to animate the logo and later "+
    "prototyping my design.It is very important."),

  ];
  const TODO({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
          Row(
              children: [
                
                Expanded(
                  flex :1,
                  child: Icon(Icons.arrow_back,
                  color: Colors.red,)
                  ),
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Text(
                      'Create new task',
                      style: TextStyle(
                        
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              Expanded(
                flex:1,
                child: Icon(Icons.more_vert))],
            ),
          Divider(
            thickness: 1.0,
            color: Colors.grey.withOpacity(.3),
          )
          ],
        ) 
        ,
      ),
      body: Column(
        children: [
        ...cards.map((e) => Padding(
          padding: const EdgeInsets.all(15.0),
          child: e,
        ),).toList(),
        SizedBox(height: 50,),
        Container(
          width: 200,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent[100]
              
            ),
            onPressed: (){}, 
            child: Text("Add Task",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
          
            ),)),
        )]
      ),
      
    );

  }
}
