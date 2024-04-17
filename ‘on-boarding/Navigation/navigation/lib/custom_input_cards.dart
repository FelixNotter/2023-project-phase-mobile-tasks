
import 'package:flutter/material.dart';



class Do extends StatefulWidget {
  final String top;
  final TextEditingController? control; 
  final IconData? icon;
  final String unique;
  const Do({super.key,required this.unique,required this.top,required this.control,this.icon});

  @override
  State<Do> createState() => _DoState();
}

class _DoState extends State<Do> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [Text(widget.top,textAlign: TextAlign.start,
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
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  height: 80,
                  width: MediaQuery.of(context).size.width*.8,
                  child: TextField(
                    key: Key(widget.unique),
                    controller: widget.control,
                    maxLines: 4,
                    decoration: const InputDecoration(
                    // Add hint text if desired
              
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,  
                  
                    ),
                
                  ),
                  ),
                ),
              ),
           Icon(widget.icon,color: Colors.redAccent[100],),
           
           ],),
            ),
        ],
      );
  }
}