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
          title: const Text("Hello Core2Web"),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
          
        ),
        body:Center(
          child:Container(
            width: 360,
            height: 200,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
