import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());

}

class MyApp extends StatefulWidget{
const MyApp({super.key});

@override
 State createState() => _MyAppState();
}
    
  class _MyAppState extends State{
int count=0;
    @override
  Widget build(BuildContext context){
    return MaterialApp(

      home:Scaffold(
        appBar:AppBar(
          title:const Text("counterApp"),
          centerTitle:true,
          backgroundColor:Colors.blue,
        ),
        body:Center(
          child:Text("$count"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            count++;
            setState((){});
          },

          child:const Icon(Icons.add),
          
        ),
      ),
    );
  }
  }
  
