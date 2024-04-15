import 'package:flutter/material.dart';


class Todo extends StatelessWidget {

  String content;
  String date;
  String desc;
  Color color;
  Todo({super.key,required this.content,required this.date,required this.color,required this.desc});

  @override
  Widget build(BuildContext context) {
    return  Column(
            children: [
         
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 360,
                    height: 80,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(width: 10,),
                          Text(content[0].toUpperCase(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),),
                          SizedBox(width: 50,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 10,),
                              Text(content,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                              Text(desc,
                              style:TextStyle(
                                fontWeight:FontWeight.bold 
                              )),
                            ],
                          ),
                          SizedBox(width: 30,),
                          Row(
                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(date,
                              style: TextStyle(
                                fontSize: 12,
                                                        
                              ),),
                            SizedBox(width: 5,),
                            Container(
                              width: 5,
                              height: 60,
                              color: color,
                            ),
                             SizedBox(width: 10,),
    
                            ],
                          ),
                        
                      
                        ],
                      ),),
                  ),
                ],
              ),
                ],
          )
        
        
        
        
        
        
        
 ;
  }
}