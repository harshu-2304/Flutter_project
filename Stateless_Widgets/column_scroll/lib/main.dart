import "package:flutter/material.dart";

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
      title:const Text("column Scroll"),
      centerTitle: true,
      backgroundColor: Colors.blue,
    ),
    body:Center(
      child: SingleChildScrollView(
         child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.white,
            child: Image.network(
              "https://images.t2online.in/cdn-cgi/image/width=1280,quality=70/https://apis.t2online.in/documents/20123/0/ae8528bc4583df6eb5425420db50e60f.jpg/b935c50a-8136-b8d1-93e2-50006188c330?t=1708464400551",
              fit: BoxFit.cover,
            ),
      
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 300,
            width: 300,
            color: Colors.white,
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYJ4x4WMD5ACKVBEtrNsNbtFuVsYi3Dzo2Bg&s",
              fit: BoxFit.cover,
            ),
      
          ),
          const SizedBox(
            height: 15,
          ),
      Container(
            height: 300,
            width: 300,
            color: Colors.white,
            child: Image.network(
              "https://images.news18.com/ibnlive/uploads/2023/07/darshan-raval-interview.jpg",
              fit: BoxFit.cover,
            ),
      
          ),
          const SizedBox(
            height: 15,
          ),
      Container(
            height: 300,
            width: 300,
            color: Colors.white,
            child: Image.network(
              "https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da8425f4f150230e5e060175a040",
              fit: BoxFit.cover,
            ),
      
          ),
          const SizedBox(
            height: 15,
          ),
      Container(
            height: 300,
            width: 300,
            color: Colors.white,
            child: Image.network(
              "https://www.filmfare.com/awards/filmfare-awards-2021/images/nominations/darshan_raval.jpg",
              fit: BoxFit.cover,
            ),
      
          ),
      
      
        ],
        )
      
        ),
    ),
  ),
);
  }
}