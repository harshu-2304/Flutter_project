import 'package:flutter/cupertino.dart';
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
        title: const Text("AppBar"),
        centerTitle: true,
        backgroundColor: Colors.blue,
       ),
       body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           
            Container(
              height: 150,
              width: 150,
              color:Colors.black,
              child:Image.network(
                "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da8425f4f150230e5e060175a040",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
             Container(
              height: 150,
              width: 150,
              color:Colors.black,
              child:Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-MnX1dGFS6ExerVMihlgbyt72-6bakMcyOg&s",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
             Container(
              height: 150,
              width: 150,
              color:Colors.black,
              child:Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8fb52jR7lnI0x85oqWz162j4wMrETRpfG1A&s",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
        ],),
       ),
      ),
    );
  }
}
