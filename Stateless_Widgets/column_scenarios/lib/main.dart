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
          title:const Text("column"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Container(
          width:MediaQuery.of(context).size.width,
          color:Colors.amber,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
            height:200,
            width:200,
            color:Colors.pink,
            ),
          ],
        ),
      ),
      ),
    );
  }
}
