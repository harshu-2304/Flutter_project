import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
       appBar:AppBar(
        title: const Text("container"),
        centerTitle: true,
        backgroundColor: Colors.blue,
       ),
       body:Padding(
         padding: const EdgeInsets.all(8.0),
         child: Center(
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: 100,
          decoration: BoxDecoration(
            border: const Border(
              left: BorderSide(
                color: Colors.red,
                width: 5,
              ),
            ),
            borderRadius: BorderRadius.circular(20),
            color: Colors.amber,
          
            
            
          ),
               child:const Text(
          "Hello",
          style: TextStyle(
            fontSize: 20,
            fontWeight:FontWeight.w500,
          ),
               )
          ),
         ),
       ),
      ),
    );
  }
}
