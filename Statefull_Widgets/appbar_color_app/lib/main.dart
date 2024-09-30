import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}
class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State createState()=> _MyAppState();
}
class _MyAppState extends State{

  bool changeColor=true;
@override
   
   Widget build(BuildContext context){



    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text("Appbar Color"),
          centerTitle:true,
          backgroundColor:(changeColor)? Colors.green : Colors.blue,
        ),
        body:Center(
        child:Container(
          height:150,
          width:150,
          color:Colors.purple,
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
           if(changeColor){
            changeColor=false;
           }else{
            changeColor=true;
           }
           setState(() {});
        },
         backgroundColor:Colors.blue,
         child:const Text("toggle"),
        ),
      ),
    );
   }
  }

