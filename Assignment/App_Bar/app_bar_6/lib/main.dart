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
          title: const Text("App Bar"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child:
        SingleChildScrollView(
          child:Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children:[
              Container(
                height: 200,
                width: 200,
                color:Colors.amber,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color:Colors.pink,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color:Colors.purple,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color:Colors.black,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color:Colors.blue,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color:Colors.red,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color:Colors.green,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color:Colors.grey,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color:Colors.orange,
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 200,
                width: 200,
                color:Colors.pink,
              ),
              
            ]
          ),
        ),        
      ),
      ),
    );
  }
}
