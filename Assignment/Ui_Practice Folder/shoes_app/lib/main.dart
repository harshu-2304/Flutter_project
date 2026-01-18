import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
          title:const Text
          ("My cart",
          style:TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w500,
            color:Color.fromARGB(255, 3, 47, 82),
          ),
          ),
          centerTitle: true,
        ),
      
        body:
        
        Column(
         
          
          children:[
            const SizedBox(
            height: 30,
            width: 20,
          ),
          Padding(padding:EdgeInsets.only(left: 15),


           child: Container(
              
              height: 180,
              width: 380,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              
              color:Colors.grey[200],
              ),

              child:Row(
                children:[
                  Padding(padding: EdgeInsets.only(left: 15),
                  child:Container(
                   
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    color:Colors.amber
                  ),
                  child: Image.network(
                    "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                    fit:BoxFit.cover,
                    ),
                  ),
                  ),
                  const SizedBox(
            width: 10,
          ),
          Column(
            children:[
              const Text(
                "Nike Shoes",
                style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 50,
                  width: 180,
                 child:  const Text("with iconic style & legendry comfort , on repeate."),
                ),
                const SizedBox(height: 10,),
                Row(
                  children:[
                const Text(
                  "570.00",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.w500, 
                  ),
                  ),

                const SizedBox(width: 30,),

                const Icon(Icons.remove),
                const SizedBox(width: 10,),

                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:Border.all(
                    color:Colors.purple,
                    width: 3,
                  
                    ) ,
                ),
                alignment: Alignment.center,
              child:  const Text("1"),
                ),
                const SizedBox(width: 10,),

                const Icon(Icons.add),

                  ]
                ),
            ]
          ),
                ]
              ),
            ),
          ),
          const SizedBox(
            height: 30,
            width: 20,
          ),
          Padding(padding:EdgeInsets.only(left: 15),

          
           child: Container(
              
              height: 180,
              width: 380,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              
              color:Colors.grey[300],
              ),

              child:Row(
                children:[
                  Padding(padding: EdgeInsets.only(left: 15),
                  child:Container(
                   
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    color:Colors.amber
                  ),
                  child: Image.network(
                    "https://app.vectary.com/website_assets/636cc9840038712edca597df/636cc9840038713d9aa59ac2_UV_hero.jpg",
                    fit:BoxFit.cover,
                    ),
                  ),
                  ),
                  const SizedBox(
            width: 10,
          ),
          Column(
            children:[
              const Text(
                "Nike Shoes",
                style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 50,
                  width: 180,
                 child:  const Text("with iconic style & legendry comfort , on repeate."),
                ),
                const SizedBox(height: 10,),
                Row(
                  children:[
                const Text(
                  "77.00",
                  style: TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.w500, 
                  ),
                  ),

                const SizedBox(width: 30,),

                const Icon(Icons.remove),
                const SizedBox(width: 10,),

                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border:Border.all(
                    color:Colors.purple,
                    width: 3,
                  
                    ) ,
                ),
                alignment: Alignment.center,
              child:  const Text("1"),
                ),
                const SizedBox(width: 10,),

                const Icon(Icons.add),

                  ]
                ),
            ]
          ),
                ]
              ),
            ),
          ),

          const SizedBox(height: 140,),

         const Row(
            
            children:[
               SizedBox(width: 10,),
               Text(
                "Subtotal:",
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
                ),

                 SizedBox(width: 230,),
               Text(
                "800.00",
                style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
                ),

            ]
          ),
          const SizedBox(height: 20,),

          const Row(
            
            children:[
               SizedBox(width: 10,),
               Text(
                "Delivery Fee:",
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
                ),

                 SizedBox(width: 220,),
               Text(
                "5.00",
                style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
                ),

            ]
          ),
          const SizedBox(height: 20,),

          const Row(
            
            children:[
               SizedBox(width: 10,),
               Text(
                "Discount:",
                style:TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
                ),

                 SizedBox(width: 250,),
               Text(
                "40%",
                style:TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                ),
                ),

            ]
          ),
          const SizedBox(height: 20,),


          Container(
            height: 50,
            width: 330,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color:Colors.blue[900],
            ),
              alignment: Alignment.center,
            child:const Text(
              "Checkout for 480.00",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
              ),
          ),
          
          
          
          ]
        ),
      ),
    );
  }
}
