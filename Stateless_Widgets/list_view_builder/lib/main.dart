import "package:flutter/material.dart";
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
        appBar:AppBar(
          title:const Text("list View Builder"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:ListView.builder(
          itemCount: 30,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index)  {
          return Text(
            "Index:$index",
            style:const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500
            ),
            );
          }
        ),
      ),
    );
  }
}