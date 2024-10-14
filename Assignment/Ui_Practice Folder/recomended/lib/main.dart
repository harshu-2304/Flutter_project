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
          title:const Text(
            "Recomended",
            style:TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,

            ),
          ),
          centerTitle: true,

        ),
        
        body: Column(
      
          children:[
            const Text(
              "Start a new career",
              style:TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
              ),
                const SizedBox(
                height: 15,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
              child:Row(
                
                children: [
                  const SizedBox(
                width: 10,
              ),
                Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 100,
          
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color.fromRGBO(0, 91, 135, 1),
                  
                 ),
                 child:const Text(
                    "Data Science",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                ),
                const SizedBox(
                width: 10,
              ),
              Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 140,
          
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color.fromRGBO(0, 91, 135, 1),
                  
                 ),
                 child:const Text(
                    "Machines Learning",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                ),
                const SizedBox(
                width: 10,
              ),
              Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 110,
          
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color.fromRGBO(0, 91, 135, 1),
                  
                 ),
                 child:const Text(
                    "Apache Space",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                ),
                const SizedBox(
                width: 10,
              ),
                Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 100,
          
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color:Color.fromRGBO(0, 91, 135, 1),
                  
                 ),
                 child:const Text(
                    "Big Data",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    ),
                ),
                ],
              ),
              ),
              const SizedBox(
                height: 35,
              ),
              Container(
                height: 150,
                width: 380,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                color:Colors.grey[200],
                ),
                
                   child: Row(
                      children: [
                    Padding(padding: EdgeInsets.all(8),
                      child:   Container(
                          height: 200,
                          width: 130,
                         
                          decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),

                          color: Colors.amber,
                        ),

                        child: Image.asset(
                          "assets/Recomended.jpg",
                          fit: BoxFit.cover,
                        ),
                        ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                     children: [
                      const Text(
                        "Data Science",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      const Text("Harvard University"),
                        Container(
                          height: 60,
                          width: 210,
                     child: const Text("Lorem ipsum dolor sit ameteget nunc dictum est penatibus nunc"
                       ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children:[
                            Container(
                              height: 25,
                              width:90,
                              color: Colors.blue[100],
                              child: Text(
                                "Data Science",
                                style:TextStyle(
                                  color:Colors.blue[800],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 25,
                              width:120,
                              color: Colors.blue[100],
                              child: Text(
                                "Machine Learning",
                                style:TextStyle(
                                  color:Colors.blue[800],
                                ),
                              ),
                            ),
                          ]
                        ),
                     ]
                    ),
                      ],
                    ),
                
              ),

              const SizedBox(
                height: 15,
                ),
                Container(
                height: 150,
                width: 380,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                color:Colors.grey[200],
                ),
                
                   child: Row(
                      children: [
                    Padding(padding: EdgeInsets.all(8),
                      child:   Container(
                          height: 200,
                          width: 130,
                          decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),

                          color: Colors.amber,
                        ),
                        child: Image.asset(
                          "assets/Recomended.jpg",
                          fit: BoxFit.cover,
                        ),
                        ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                     children: [
                      const Text(
                        "AI & ML",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      const Text("Harvard University"),
                        Container(
                          height: 60,
                          width: 210,
                     child: const Text("Lorem ipsum dolor sit ameteget nunc dictum est penatibus nunc"
                       ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children:[
                            Container(
                              height: 25,
                              width:120,
                              color: Colors.blue[100],
                              child: Text(
                                "Machine Learning",
                                style:TextStyle(
                                  color:Colors.blue[800],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 25,
                              width:90,
                              color: Colors.blue[100],
                              child: Text(
                                "Decision Tree",
                                style:TextStyle(
                                  color:Colors.blue[800],
                                ),
                              ),
                            ),
                          ]
                        ),
                     ]
                    ),
                      ],
                    ),
                
              ),
              const SizedBox(
                height: 15,
                ),
              Container(
                height: 150,
                width: 380,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                color:Colors.grey[200],
                ),
                
                   child: Row(
                      children: [
                    Padding(padding: EdgeInsets.all(8),
                      child:   Container(
                          height: 200,
                          width: 130,
                          decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),

                          color: Colors.amber,
                        ),
                        child: Image.asset(
                          "assets/Recomended.jpg",
                          fit: BoxFit.cover,
                        ),
                        ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                     children: [
                      const Text(
                        "Big Data",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      const Text("Harvard University"),
                        Container(
                          height: 60,
                          width: 210,
                     child: const Text("Lorem ipsum dolor sit ameteget nunc dictum est penatibus nunc"
                       ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children:[
                            Container(
                              height: 25,
                              width:60,
                              color: Colors.blue[100],
                              child: Text(
                                "Big Data",
                                style:TextStyle(
                                  color:Colors.blue[800],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 25,
                              width:100,
                              color: Colors.blue[100],
                              child: Text(
                                "Apache Spark",
                                style:TextStyle(
                                  color:Colors.blue[800],
                                ),
                              ),
                            ),
                          ]
                        ),
                     ]
                    ),
                      ],
                    ),
                
              ),
              const SizedBox(
                height: 15,
                ),
              Container(
                height: 150,
                width: 380,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                color:Colors.grey[200],
                ),
                
                   child: Row(
                      children: [
                    Padding(padding: EdgeInsets.all(8),
                      child:   Container(
                          height: 200,
                          width: 130,
                          decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),

                          color: Colors.amber,
                        ),
                        child: Image.asset(
                          "assets/Recomended.jpg",
                          fit: BoxFit.cover,
                        ),
                        ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Column(
                     children: [
                      const Text(
                        "Devops",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      const Text("Harvard University"),
                        Container(
                          height: 60,
                          width: 210,
                     child: const Text("Lorem ipsum dolor sit ameteget nunc dictum est penatibus nunc"
                       ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children:[
                            Container(
                              height: 25,
                              width:50,
                              color: Colors.blue[100],
                              child: Text(
                                "Docker",
                                style:TextStyle(
                                  color:Colors.blue[800],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Container(
                              height: 25,
                              width:80,
                              color: Colors.blue[100],
                              child: Text(
                                "Kubernetes",
                                style:TextStyle(
                                  color:Colors.blue[800],
                                ),
                              ),
                            ),
                          ]
                        ),
                     ]
                    ),
                      ],
                    ),
                
              ),
          ]
        ),
        
      ),
    );
  }
}
