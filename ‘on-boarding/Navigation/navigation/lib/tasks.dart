import 'dart:math';
import 'package:flutter/material.dart';
import "card.dart";
import 'contains.dart';


class Task extends StatefulWidget {
 
  const Task({super.key});

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
List<Data> card = List.empty(growable: true);


  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          children: [
          Row(
              children: [
                Expanded(child: 
             GestureDetector(
              onTap: () async {
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
                      'Todo List',
                      style: TextStyle(
                        
                        fontSize: 30,
                       
                      ),
                    ),
                  ),
                ),
              Expanded(
                flex:1,
                child: Icon(Icons.more_vert))],
            ),
 
          ],
        ) 
        ,
      ),
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            Center(child: Image.asset('assets/sticky.png', fit: BoxFit.contain)),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Text("Task List",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ],
            
            ),
          
          
          
          SizedBox(
            height: 330,
            child: SingleChildScrollView(
              child: Column(
                children: 
                card.map((e) => GestureDetector(
                  onTap: () async{
                   final res =  await Navigator.pushNamed(context, '/details',
                    arguments: e) as Map;
             
                final main = (res['main'] != null)?res['main']:"";
                final date =( res['date'] != null)?res['date']:"";
                final desc = ( res['desc'] != null)?res['desc']:"";
                setState(() {
                  e.title = main;
                  e.date = date;
                  e.desc = desc;
                });
                  },
                  child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child:Todo(content: e.title,date: e.date,desc: e.desc, color: getRandomColor(),),
                                ),
                ),).toList(),
              ),
            ),
          ),
          
         
          SizedBox(height: 30,),
          Container(
            width: 300,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              
                backgroundColor: Colors.redAccent[100],
                shape: RoundedRectangleBorder(),
                
                
              ),
              onPressed: () async {
              final result = await Navigator.pushNamed(context, '/create') as Map;
              print(result);

                final main = (result != null && result['main'] != null)?result['main']:"";
                final date =(result != null && result['date'] != null)?result['date']:"";
                final desc = (result != null && result['desc'] != null)?result['desc']:"";
            
              
          
             
            
                  setState(() {
                  card.add(Data(title: main, desc: desc, date: date));
           
                });

                
                
            
            }, child: 
            Text("Create task",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),)),
          ) ],
        ),
      ),
      );
  }
}

  Color getRandomColor() {
    List<Color> colors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.orange,
      Colors.purple,
      Colors.teal,
    ];

    Random random = Random();
    int index = random.nextInt(colors.length);
    return colors[index];
  }