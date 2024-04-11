
import 'package:flutter/material.dart';



class Do extends StatelessWidget {
  final String top;
  final String inside; 
  final IconData? icon;
  const Do({super.key,required this.top,required this.inside,this.icon});

  


  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(top,textAlign: TextAlign.start,
        style: TextStyle(
          
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.redAccent[100],
        
        ),),
          Card(
            
            child :Row(
            
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width*.8,
                  child: Text(inside,
                  maxLines: 4,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                ),
              ),
           Icon(icon,color: Colors.redAccent[100],),
           
           ],),
            ),
        ],
      );
  }
}