import 'package:flutter/material.dart';


class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
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
      body: Column(
        
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
                    padding: const EdgeInsets.all(8.0),
                    child: Text("UI/UX App Design"),
                  )
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
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width*.7,
                      child: Text("First I have to animate the logo and prototyping my design.It's very important",
                      softWrap: true,
                      maxLines: 4,
                      overflow: TextOverflow.visible,),
                    ),
                  )
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
            height : 60,
            child: Card(
              color: Colors.grey[100],
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("April 29,2023"),
                  )
                ],

              ),
            ),
          ),
        ],
  
    ),
    );
  }
}