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
          title:const Text("App Bar"),
          centerTitle: true,
          backgroundColor: Colors.blue,

        ),
        body:Center(
          child:
        
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Container(
                height: 200,
                width: 200,
                color:Colors.amber,
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
      
        
      
    );
  }
}
