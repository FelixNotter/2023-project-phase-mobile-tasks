import 'package:flutter/material.dart';


class Todo extends StatelessWidget {

  final String content;
  final String date;
  final String desc;
  final Color color;
  const Todo({super.key,required this.content,required this.date,required this.color,required this.desc});

  @override
  Widget build(BuildContext context) {
    return  Column(
            children: [
         
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 360,
                    height: 80,
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(width: 10,),
                          Text(content[0].toUpperCase(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),),
                          const SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 10,),
                              Text(content,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),),
                              Text(desc,
                              style:const TextStyle(
                                fontWeight:FontWeight.bold,
                                fontSize:10,
                              )),
                            ],
                          ),
                          const SizedBox(width: 30,),
                          Row(
                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(date,
                              style: const TextStyle(
                                fontSize: 12,
                                                        
                              ),),
                            const SizedBox(width: 5,),
                            Container(
                              width: 5,
                              height: 60,
                              color: color,
                            ),
                             const SizedBox(width: 10,),
    
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