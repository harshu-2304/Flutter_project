import 'package:flutter/material.dart';

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
          title:const Text("Row App"),
          centerTitle: true,
          backgroundColor: 
          Colors.blue,
        ),
        body:Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.amber,
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
      
        children:[
          Container(
            height: 200,
            width: 200,
            color: Colors.pink,
          ),
        ],
        ),
        ),
        ),
      
    );
  }
}
