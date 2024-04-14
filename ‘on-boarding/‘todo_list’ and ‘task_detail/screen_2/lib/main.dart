import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'cards.dart';
import "task_detail.dart";

void main() {
  runApp(MaterialApp(
    home:Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
 
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Todo> card = const[
    Todo(desc: "Design",content: "UI/UX App",date: "14th June 2002",color: Colors.redAccent,),
    Todo( desc: "Design",content: "UI/UX App ",date: "19th June 2002",color: Colors.greenAccent,),
    Todo(desc: "",content: "View Candidates",date: "30th April 2002",color: Colors.amber,),
    Todo(desc: "Dry billing",content: "Football Cu",date: "30th April 2002",color: Colors.green,),
    Todo(desc: "catwheel",content: "Backflipping",date: "30th April 2002",color: Colors.amber,),
  ];
  
  
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
      body: Column(
        
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
              card.map((e) => Padding(
              padding: const EdgeInsets.all(15.0),
              child: e,
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
            onPressed: (){
            
            
          
          }, child: 
          Text("Create task",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),)),
        ) ],
      ),
      );
  }
}