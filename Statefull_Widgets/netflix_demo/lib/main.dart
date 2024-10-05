import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

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
            title:const Text(
              "Netflix Demo",
            style:const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
            ),

             centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body:ListView.builder(
            itemCount: 10,
            physics: const BouncingScrollPhysics(),
            
            itemBuilder: (BuildContext context,int index){
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  const Text("Darshan Raval",
                  style:const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                  ),
                  SingleChildScrollView(
                    scrollDirection:Axis.horizontal,
                    child:Row(
                      children:[
                        Container(
                          padding:const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child:Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1i6wT8WVtxXTPL7c1v_Tiq6lN_NClWiIfjg&s",
                            ),
                        ), Container(
                          padding:const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child:Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQfI_kL3HVgjWnysjaFDSkfMojfPdIsc2BuLw&s",
                            ),
                        ), Container(
                          padding:const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child:Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmOZw810VNvSahXCoA-jwC1dZWf9A1VR3hTQ&s",
                            ),
                        ), Container(
                          padding:const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child:Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAGrDZ4Pqbvy0YzaRXnvAlXyU5zjJgEhRN5A&s",
                            ),
                        ), Container(
                          padding:const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child:Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6j54Hw7PpitQTlTpzFXwqK91JdpaIAxS32g&s",
                            ),
                        ), Container(
                          padding:const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child:Image.network(
                            "https://images.news18.com/ibnlive/uploads/2023/07/darshan-raval-interview-16891519333x2.jpg",
                            ),
                        ), Container(
                          padding:const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child:Image.network(
                            "https://pbs.twimg.com/profile_images/1323211183302696960/vpj50G-K_400x400.jpg",
                            ),
                        ), Container(
                          padding:const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child:Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8fb52jR7lnI0x85oqWz162j4wMrETRpfG1A&s",
                            ),
                        ),
                         
                        Container(
                          padding:const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child:Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdzvUwW0qKDRQCPA3pfbXBpvmeFpdpP2Go6Q&s",
                            ),
                        ), Container(
                          padding:const EdgeInsets.all(5),
                          height: 300,
                          width: 200,
                          child:Image.network(
                            "https://pbs.twimg.com/media/E8sCzS9UUAIaHB6?format=jpg&name=4096x4096",
                            ),
                        ),                      ]
                    ),
                  ),
                ]
              
              );
            }
          )
          
        ),
      );
    
  }
}
