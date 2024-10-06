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
        body:
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
              //mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                Container(
                  height: 200,
                  width: 200,
                  color:Colors.amber,
                  child: Image.network(
                    "https://images.news18.com/ibnlive/uploads/2023/07/darshan-raval-interview-16891519333x2.jpg",
                    fit:BoxFit.cover,
                    
                    
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color:Colors.pink,
                  child: Image.network(
                    "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da8425f4f150230e5e060175a040",
                    fit:BoxFit.cover,
                  ),
                ),
                const SizedBox(
                width: 15,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color:Colors.purple,
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFLczIvwlRJvHvVejgO8BnsN-8wzdFaFdd7A&s",
                    fit:BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color:Colors.black,
                  child: Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlpauGmKPIUYAwN0ZT7nSgOJrxXPn3r7048g&s",
                    fit:BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  height: 200,
                  width: 200,
                  color:Colors.blue,
                  child: Image.network(
                    "https://images.t2online.in/cdn-cgi/image/width=1280,quality=70/https://apis.t2online.in/documents/20123/0/ae8528bc4583df6eb5425420db50e60f.jpg/b935c50a-8136-b8d1-93e2-50006188c330?t=1708464400551",
                    fit:BoxFit.cover,
                  ),
                ),
                
              ]
            ),
          ),
      ),        
      
          );
  }
}
