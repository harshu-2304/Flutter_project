import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
       body:Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            alignment: Alignment.center,
            height: 100,
            width: 300,
            decoration:BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ) ,
              border: Border.all(
                color: Colors.blue,
                width: 3,
              ),
              color: const Color.fromARGB(255, 154, 180, 202),
            ) ,
          child:  const Text(
            "Harshada",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            )
            
          ),
        ),
       ),
      ),
    );
  }
}
