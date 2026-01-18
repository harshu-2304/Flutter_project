import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          
          title:const Text("AppBar"),
          centerTitle: true,
          
          backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                
              },
            ),
            IconButton(
              icon:const Icon(Icons.settings),
              onPressed: () {
                
              },
            ),
          ],
          
        ),
        
       
      ),
    );
  }
}
