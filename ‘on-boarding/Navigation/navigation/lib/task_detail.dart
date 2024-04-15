import 'package:flutter/material.dart';
import 'package:navigation/createTask.dart';
import 'card.dart';
import 'contains.dart';



class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Data;
    final mainTaskController = TextEditingController();
    final dueDateController = TextEditingController();
    final descController = TextEditingController();
    mainTaskController.text =  args.title;
    dueDateController.text = args.date;
    descController.text = args.desc;
    return Scaffold(
      appBar:AppBar(
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
                      'Task Detail',
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
            Center(child: Image.asset('assets/shop.png', fit: BoxFit.contain)),
            SizedBox(height: 10),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Text("Title",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  
                  ),
                  ),
                ),
              ],
            
            ),
            Container(
              width: 360,
              height : 80,
              child: Card(
                color: Colors.grey[100],
                child: Row(
                  children: [
                    Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width*.7,
                    child: TextField(
                    
                    controller: mainTaskController,
                      maxLines: 4,
                      decoration: InputDecoration(
                      // Add hint text if desired
                      
                      hintText: args.title,
                
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,  
                    
                      ),
                  
                    ),
                    ),
                  ),
                ),
                  ],
        
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Text("Description",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                  
                  ),
                  ),
                ),
              ],),
              Container(
              width: 360,
              height : 80,
              child: Card(
                color: Colors.grey[100],
                child: Row(
                  children: [
                    Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width*.7,
                    child: TextField(
                      controller: descController,
                      maxLines: 4,
                      decoration: InputDecoration(
                      // Add hint text if desired
                      hintText: args.desc,
                
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,  
                    
                      ),
            
                    ),
                    ),
                  ),
                ),
                  ],
        
                ),
              ),
            ),
             const SizedBox(height: 20),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                  child: Text("Deadline",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  
                  ),
                  ),
                ),
              ],),
            Container(
              width: 360,
              height : 80,
              child: Card(
                color: Colors.grey[100],
                child: Row(
                  children: [
                    Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: SizedBox(
                    height: 80,
                    width: MediaQuery.of(context).size.width*.7,
                    child: TextField(
                      controller: dueDateController,
                      maxLines: 4,
                      decoration: InputDecoration(
                      // Add hint text if desired
                      hintText: "Date",
                
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,  
                    
                      ),
            
                    ),
                    ),
                  ),
                ),
                  ],
        
                ),
              ),
            ),
            SizedBox(height: 30,),
          Container(
            width: 150,
            child: ElevatedButton(
            
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent[100],
              ),
              onPressed: 
            (){
              Navigator.pop(context,{
                'main':mainTaskController.text,
                'desc':descController.text,
                'date':dueDateController.text,
              });
            }, 
            child: Text(
              "Save",
              style: TextStyle(
                color: Colors.white,
                          ),
            )),
          )],
          
            ),
      ),
    );
  }
}

