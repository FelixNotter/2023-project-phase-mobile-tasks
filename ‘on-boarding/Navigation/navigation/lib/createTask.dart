import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "lists.dart";


class TODO extends StatefulWidget {
  
  const TODO({super.key});

  @override
  State<TODO> createState() => _TODOState();
}

class _TODOState extends State<TODO> {
  @override
  Widget build(BuildContext context) {

    final mainTaskController = TextEditingController();
    final dueDateController = TextEditingController();
    final descController = TextEditingController();
    final List<Do> cards = [
    Do(top: "main task name",control: mainTaskController,),
    Do(top: "Due Date",control: dueDateController,icon: Icons.calendar_month_outlined,),
    Do(top: "Description",control : descController),
    
  ];
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          children: [
          Row(
              children: [
                   Expanded(child: 
             GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
                child: Icon(Icons.arrow_back_ios,
                color: Colors.redAccent[100],
                
                ),
              )
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
            onPressed: (){
              if (mainTaskController.text.isNotEmpty && dueDateController.text.isNotEmpty && descController.text.isNotEmpty){
                 Navigator.pop(context,{
                'main':mainTaskController.text,
                'date':dueDateController.text,
                'desc':descController.text,
              }
                 );
              
              }
             ;
            }, 
            child: Text("Add Task",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
          
            ),
            )
            ),
        )
        ]
      ),
      
    );

  }
}
