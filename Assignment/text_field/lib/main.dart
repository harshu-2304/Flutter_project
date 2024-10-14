import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

 

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home:InfoApp()
    );
  }
}

class InfoApp extends StatefulWidget{
  const InfoApp({super.key});

  @override
  State createState() => _InfoAppState();
}

class _InfoAppState extends State{

  TextEditingController nameController=TextEditingController();

String? Name;
String? CompanyName;

List Info =[];


  @override
  Widget build(BuildContext context){
    return  Scaffold(
        appBar:AppBar(
          title:const Text(
            "Info",
            style:TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
            ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),

        body:  Padding(padding:const EdgeInsets.all(20),
          child: Column(
            children:[
              const SizedBox(height: 30,),
               TextField(
                decoration:const InputDecoration(
                  hintText:"Enter Name",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color:Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                    width: 20,
                    color: Colors.purple,
                    )
                    ),
                ),

                onChanged:(String val){},

                onEditingComplete: (){},

                onSubmitted: (value){}
              ),
            const SizedBox(height: 30,),

              TextField(
                decoration: const InputDecoration(
                  hintText:"Company Name",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    color:Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                    width: 20,
                    color: Colors.purple,
                    )
                    ),
                ),

                 onChanged:(String val){},

                onEditingComplete: (){},

                onSubmitted: (value){}
              ),

             const SizedBox(height: 30,),


              ElevatedButton(
                onPressed: (){

                 Info.add({"name":nameController.text});

               setState(() {
                 
               });
          
                },

               
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      fontSize:20,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                   
                    
              ),

              const SizedBox(height: 30,),

              


              Expanded(
                child: ListView.builder(
                  itemCount: Info.length,
                shrinkWrap: true,
                itemBuilder: (context, index){
                  return Text(
                    "Name:${Info[index]["name"]}",
                    style: const TextStyle(
                      fontSize: 25,
                    ),
                  );
                }
                
                ),
              )
          
            ]
          ),
        ),

        
        
      );
  }
}
