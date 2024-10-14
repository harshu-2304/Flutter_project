import 'package:flutter/material.dart';


void main() {
  runApp( const MainApp());
}

class MainApp extends StatelessWidget {
 const   MainApp({super.key});


  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: MyApp()
      );
  }
}
    

    class MyApp extends StatefulWidget{
      const MyApp({super.key});

      @override

      State createState()=> _MyAppState();
    
    }
    class _MyAppState extends State{

      bool changeText =true;
      bool changeColor=true;

      @override
      Widget build(BuildContext){
        return Scaffold(
        appBar: AppBar(
          title: const Text("container"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
         child:/* GestureDetector(
          onTap: () {
          if(changeColor==true){
              changeColor==false;
          }else{
            changeColor=true;
          }
          setState(() {
            
          });
          if(changeText==true){
            changeText=false;
          }else{
            changeText=true;
          }
          setState(() {
            
          });*/
           
          
          GestureDetector(
            onTap: () {
          if(changeColor==true){
              changeColor=false;
          }else{
            changeColor=true;
          }
          setState(() {
            
          });
          if(changeText==true){
            changeText=false;
          }else{
            changeText=true;
          }
          setState(() {
            
          });
                     },
            child: Container(
              
            
              alignment: Alignment.center,
                    
              height: 200,
              width: 200,
              color:changeColor? Colors.red:Colors.blue,
            
              child:changeText? const Text("Click me!"):const Text("Container Tapped"),
             
            
                    ),
                     
          ),
                    
        ),
          );
          }
        
      
    
      }
    
    
  

