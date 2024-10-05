import "package:flutter/material.dart";

void main(){
 runApp(const MyApp());

}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
//int quantity=0;
  @override
  
Widget build(BuildContext context) {
    return  MaterialApp(

      home:
      Scaffold(
        appBar:  AppBar(
          title:const Text(
            "Shoes",
            style:TextStyle(
              color: Colors.purple,
            ),
          ),
          backgroundColor: Colors.white,
          
        ),
        body:
         Column(
         children: [
          const SizedBox(
            height:20,
           ),
           Container(
           color:Colors.black,
            height: 400,
             child:Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS697RXudMlO4PBcFFH4ua__yn8Lwho23hEpw&s",

              fit:BoxFit.cover,
            ),
           ),
           const SizedBox(
            height:10,
           ),
           const Text(
            "Nike Air Force 1 07",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
           ),
           const SizedBox(
                  width:30,
           ),
           Row(
             children: [
               
                ElevatedButton(
                  style:const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.purple),
                ),
                
                  onPressed: (){},
                  child:const Text(
                    "SHOES",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color:Colors.white,

                    ),
                    ),

               ),
               const SizedBox(
                  width:10,
           ),

               ElevatedButton(
                style:const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.purple),
                ),
                
                  onPressed: (){},
                  child:const Text(
                    "FOOTWEAR",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color:Colors.white,

                    ),
                    ),

               ),
                
             ],
           ),
               const SizedBox(
                height: 25,
                  //width:40,
           ),

const Text(
            "With iconic style and legencdary comfort, the AF-1 was made to be worn on repeate. This iteration puts a fresh spin on the hoopsclassis with crips leather, eraechoing 80s construction and reflective design Swoosh logos", 


),
            const SizedBox(
                height: 25,
                  //width:40,
           ),

           const Row (
            children:[
             SizedBox(
              
                //height: 25,
                  width:20,
           ),
            Text(
              "Quantity",
              style:TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w400,
              ),
            ),
             SizedBox(
              width:20,
            ),
            
            ]
            //class Counter extends StatefulWidget{

          //  }

           ),
           

         ]
          
       ),
        ),
      


    );
  }
}
