import 'package:flutter/material.dart';
import 'package:intl/intl.dart';



// ignore: must_be_immutable
class Do extends StatefulWidget {
  final String top;
  final TextEditingController control;
  final IconData? icon;
  final String unique;
  bool? enabled = true;
  Do(
      {super.key,
      required this.unique,
      required this.top,
      required this.control,
      this.icon,
      this.enabled});

  @override
  State<Do> createState() => _DoState();
}

class _DoState extends State<Do> {
  DateTime? dateTime = DateTime.now();
  void _showDatePicker(){
    showDatePicker(
      context: context,
      initialDate: DateTime.now(), 
      firstDate: DateTime(2002), 
      lastDate:DateTime(2030),
      barrierColor: Colors.blueAccent[100],

      ).then((value) {
        setState(() {
     
          widget.control.text = DateFormat('yyyy-MM-dd').format(value??DateTime.now());
         
        });

      });
    
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.top,
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent[100],
          ),
        ),
        Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: SizedBox(
                  height: 80,
                  width: MediaQuery.of(context).size.width * .75,
                  child: TextField(
                    enabled: widget.enabled,
                    key: Key(widget.unique),
                    onChanged: (val){
                      print(widget.top);
                    },
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
              IconButton(
                  onPressed: _showDatePicker,
                  icon: Icon(
                    widget.icon,
                    color: Colors.blueAccent[100],
                  )
                  ),
            ],
          ),
        ),
      ],
    );
  }
}


