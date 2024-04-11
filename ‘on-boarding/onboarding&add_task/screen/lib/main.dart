import 'package:flutter/material.dart';
import 'todo.dart';

void main() {
  runApp(MaterialApp(
    
    home:Home(),
    debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Container(
        
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/drop.avif'),
     
           fit: BoxFit.cover,
    
          )

          ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 100, 100, 0),
          child: Center(
            child: Image.asset('assets/stickman.png',
            width: 500,
            height: 500,
           
            ),
          ),
        )
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Container(
                width: 200.0,
                height: 50.0,
                child: FloatingActionButton(
                  child: Text('Get Started',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,


                  ),
                  ),
                  tooltip: "Click Here to get Started",
                  elevation: 0.0,
                  onPressed: (){},
                  backgroundColor: Color.fromARGB(255, 7, 56, 170),
                  
                  ),
              ),
            ),
          ],
        ),
        

          );
        
  
  }
}