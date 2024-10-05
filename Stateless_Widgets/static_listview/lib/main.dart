import "package:flutter/cupertino.dart";
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
          title:const Text("List Viev"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:ListView(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.white,
              child: Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmOZw810VNvSahXCoA-jwC1dZWf9A1VR3hTQ&s",
                //fit: BoxFit.cover,
              ),
            ),
              const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              const Text(
                "Bhari",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w400,
                ),
                ),
                 Image.network("https://images.news18.com/ibnlive/uploads/2023/07/darshan-raval-interview.jpg"),
             GestureDetector(
              onTap: (){

              },
              child:
              Container(
                height: 50,
                color: Colors.amber,
                child:const Text("press me"),

              )
             ),
            
          ],
        ),
      ),
    );
  }
}