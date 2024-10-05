import "package:flutter/material.dart";


void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
        title:const Text("Space Patterns"),
        backgroundColor: Colors.blue,
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:[
            Container(
              height: 200,
              width: 200,
              color: Colors.pink,

            ),
            Container(
              height: 200,
              width: 200,
              color:Colors.purple,
            ),
          ]
        ),
      ),
    );
  }
}