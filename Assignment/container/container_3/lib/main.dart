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
        body:Center(
          child: Container(
            height: 100,
            width: 100,
            decoration:  BoxDecoration(
              border: Border.all(
                color: Colors.purple,
                width: 5,
              ),
              borderRadius: const BorderRadius.only(topRight: Radius.circular(20)),
              color: Colors.pink[100],
              ),
              
            
          ),
        ),
      ),
    );
  }
}
