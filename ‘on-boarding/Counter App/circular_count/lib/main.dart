import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Circular Counter",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        
        ),

    ),
    body:Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Center(child: Text("$score",
        style: TextStyle(
          fontSize: 80,
          fontWeight: FontWeight.w300,
        ),
        )),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: 100.0,
              height: 70.0,

              child: FloatingActionButton(
               
                onPressed: (){
                  setState(() {
                    score-=1;
                    score = (11+score)%11;
                  });
                },
                child: Text("Decrement"),
                tooltip: "Click to decrement value" ,
                ),
            ),
              Container(
                width: 100.0,
                height: 70.0,
                child: FloatingActionButton(
                        
                onPressed: (){
                  setState(() {
                    score+=1;
                    score = (11+score)%11;

                  });
                },
                child: Text("Increment"),
                tooltip: "Click to increment value" ,
                ),
              ),


          ],)
      ],
      )
    );
  }
}