import 'package:flutter/material.dart';
import "../widgets/custom_card_generator.dart";
import '../../data/model_data.dart';


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
                color: Colors.blueAccent[200],
                
                ),
              )
              ),
                
                const Expanded(
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
              const Expanded(
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
            const SizedBox(height: 10),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
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
                final date =(res['date'] != null)?res['date']:"";
                final desc = ( res['desc'] != null)?res['desc']:"";
                final complete = res['complete']!;
              
                setState(() {
                  e.title = main;
                  e.date = date;
                  e.desc = desc;
                  e.isCompleted = complete;
                });
                  },
                  child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child:Todo(content: e.title,date: e.date.toString(),desc: e.desc, color: (e.isCompleted)?Colors.greenAccent:Colors.redAccent,),
                                ),
                ),).toList(),
              ),
            ),
          ),
          
         
          const SizedBox(height: 30,),
          SizedBox(
            width: 300,
            child: ElevatedButton(
              key: const Key('next'),
              style: ElevatedButton.styleFrom(
              
                backgroundColor: Colors.blueAccent[100],
                shape: const RoundedRectangleBorder(),
                
                
              ),
              onPressed: () async {
              final result = await Navigator.pushNamed(context, '/create') as Map;
                final main = (result['main'] != null)?result['main']:"";
                final date =(result['date'] != null)?result['date']:"";
                final desc = (result['desc'] != null)?result['desc']:"";
            
              
          
             
            
                  setState(() {
                  card.add(Data(title: main, desc: desc, date: date));
           
                });

                
                
            
            }, child: 
            const Text("Create task",
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

  