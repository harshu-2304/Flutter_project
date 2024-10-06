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
          title: const Text("App Bar"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
       body: Center(
          child: Container(
            width: 300, 
            height: 300, 
            
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red, 
                width: 5,
              ),
               borderRadius: BorderRadius.circular(20), 
            ),
             
              
        
            
          ),
        ),
      ),
    
    );
  }
}
                  
      
