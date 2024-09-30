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
          title:const Text("ToggleApp"),
          centerTitle:true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child:Container(
            height:150,
            width:150,
            color:changeColor? Colors.blue :Colors.purple,
          ),
        ),
floatingActionButton: FloatingActionButton(
  onPressed: (){
if(changeColor==true){
  changeColor=false;
}else{
  changeColor=true;
}
setState((){});
},
backgroundColor:Colors.blue,
child:const Text("toogle"),
),
      ),
    );
  }
}