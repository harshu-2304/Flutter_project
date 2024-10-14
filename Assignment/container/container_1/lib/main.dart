import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart";

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override

  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:const Text(
            "Container",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        body: Center(
          child:Container(
           alignment: Alignment.center,
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red,
                width: 5,
              ),
              borderRadius: BorderRadius.circular(20),
                
              color: Colors.amber,
              
            ),
            child:const Text(
              "Hello",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
              ),
          ),
          ),
      ),
    );

  }
}