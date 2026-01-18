// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:super_x_app/ankita/brands_list.dart';
// import 'package:super_x_app/ankita/brands_logo.dart';
// import 'package:super_x_app/ankita/item_list.dart';
// import 'package:super_x_app/ankita/products_screen.dart';
// import 'package:super_x_app/ankita/skin_problem_list.dart';
// import 'package:super_x_app/ankita/skin_problem_logo.dart';
// import 'package:super_x_app/cartitem.dart';
// import 'package:super_x_app/likeButton.dart';

// class ScreenOne extends StatefulWidget {
//   const ScreenOne({super.key});

//   @override
//   State createState() => _ScreenOneState();
// }

// List dataList = [];

// class _ScreenOneState extends State {
//   Future getFireStoreData() async {
//     QuerySnapshot data =
//         await FirebaseFirestore.instance.collection('cart').get();
//     for (int i = 0; i < data.docs.length; i++) {
//       dataList.add(CartItem(
//           image: data.docs[i]["imageUrl"],
//           Info: data.docs[i]["Info"],
//           productName: data.docs[i]["type"],
//           quantity: data.docs[i]["quantity"],
//           price: data.docs[i]["price"]));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           // widget.productMap["Male"][0]["name"],
//           " Bliss",
//           style: TextStyle(
//             fontSize: 28,
//             fontWeight: FontWeight.w700,
//             color: Color.fromRGBO(233, 227, 203, 1),
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: const Color.fromRGBO(90, 124, 118, 1),
//         leading: GestureDetector(
//             onTap: () {
//               Navigator.of(context).pop();
//             },
//             child: const Icon(Icons.arrow_back_ios_new, color: Colors.white)),
//         actions: [
//           GestureDetector(
//             child: const Icon(
//               Icons.favorite,
//               color: Colors.white,
//             ),
//           ),
//           const SizedBox(width: 15),
//           GestureDetector(
//             onTap: () {
//               Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(
//                   builder: (context) => const Likebutton(),
//                 ),
//               );
//             },
//             child: const Icon(
//               Icons.card_travel_outlined,
//               color: Colors.white,
//             ),
//           ),
//           SizedBox(width: 15),
//         ],
//       ),
//       //backgroundColor:Color.fromARGB(255, 241, 218, 245),
//       body: SingleChildScrollView(
//         child: Column(children: [
//           Padding(
//             padding: const EdgeInsets.only(
//               left: 20,
//               right: 20,
//               top: 10,
//               bottom: 10,
//             ),
//             child: TextField(
//               //controller: nameController,
//               decoration: InputDecoration(
//                 border: const OutlineInputBorder(),
//                 prefixIcon: const Icon(Icons.search),
//                 suffixIcon: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     IconButton(
//                       icon: const Icon(Icons.mic_outlined),
//                       onPressed: () {},
//                     ),
//                     IconButton(
//                       icon: const Icon(Icons.camera_alt_outlined),
//                       onPressed: () {},
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           Column(
//               //mainAxisSize: MainAxisSize.max,
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(10),
//                         child: ClipRRect(
//                           clipBehavior: Clip.antiAlias,
//                           borderRadius:
//                               const BorderRadius.all(Radius.circular(20)),
//                           child: Container(
//                             height: 290,
//                             width: 370,
//                             decoration: const BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10))),
//                             child: GestureDetector(
//                               onTap: () {

//                               },
//                               child: Image.asset(
//                                 "assets/images/pp.jpg",
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10),
//                         child: ClipRRect(
//                           clipBehavior: Clip.antiAlias,
//                           borderRadius:
//                               const BorderRadius.all(Radius.circular(20)),
//                           child: Container(
//                             height: 290,
//                             width: 370,
//                             decoration: const BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10))),
//                             child: GestureDetector(
//                               onTap: () {

//                               },
//                               child: Image.asset(
//                                 "assets/images/product.jpg",
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10),
//                         child: ClipRRect(
//                           clipBehavior: Clip.antiAlias,
//                           borderRadius:
//                               const BorderRadius.all(Radius.circular(20)),
//                           child: Container(
//                             height: 290,
//                             width: 370,
//                             decoration: const BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10))),
//                             child: GestureDetector(
//                               onTap: () {
//                                 // Navigator.of(context).push(
//                                 //   MaterialPageRoute(
//                                 //     builder: (context) {
//                                 //       return SerumF();
//                                 //     },
//                                 //   ),
//                                 // );
//                               },
//                               child: Image.asset(
//                                 "assets/images/sirum.jpg",
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(10),
//                         child: ClipRRect(
//                           clipBehavior: Clip.hardEdge,
//                           borderRadius:
//                               const BorderRadius.all(Radius.circular(20)),
//                           child: Container(
//                             height: 290,
//                             width: 370,
//                             decoration: const BoxDecoration(
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10))),
//                             child: GestureDetector(
//                               onTap: () {},
//                               child: Image.asset(
//                                 "assets/images/vaseline.jpg",
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),

//                 const Padding(
//                   padding: EdgeInsets.only(right: 260),
//                   child: Text(
//                     "Products",
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),

//                 const SizedBox(
//                   height: 10,
//                 ),
//                 SizedBox(
//                   height: 230,
//                   child: ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       shrinkWrap: true,
//                       itemCount: itemList.length,
//                       itemBuilder: (context, index) {
//                         return GestureDetector(
//                           onTap: () {
//                             Navigator.of(context).push(
//                               MaterialPageRoute(
//                                 builder: (context) {
//                                   return ProductsScreen(
//                                     type: itemList[index]["type"],
//                                     productMap: itemList[index]["products"],
//                                   );
//                                 },
//                               ),
//                             );
//                           },
//                           child: Container(
//                               height: 230,
//                               width: 170,
//                               margin: const EdgeInsets.only(left: 10),
//                               decoration: BoxDecoration(

//                                 borderRadius: BorderRadius.circular(3),
//                                 border: Border.all(
//                                   color:
//                                       const Color.fromARGB(252, 158, 158, 158),
//                                   width: 2,
//                                 ),
//                               ),
//                               child: Column(
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: Image.asset(
//                                         height: 150,
//                                         // "assets/images/simple.jpg",
//                                         itemList[index]["products"]["Male"][0]
//                                             ["imageUrl"]),
//                                   ),
//                                   const SizedBox(
//                                     height: 15,
//                                   ),
//                                   Text(
//                                     "${itemList[index]["type"]}",
//                                     style: const TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   )
//                                 ],
//                               )),
//                         );
//                       }),
//                 ),

//                 const SizedBox(
//                   height: 10,
//                 ),

//                 const Text(
//                   "Brands",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),

//                 const SizedBox(
//                   height: 10,
//                 ),

//                 const SizedBox(
//                   height: 10,
//                 ),
//                 SizedBox(
//                   height: 230,
//                   child: ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       shrinkWrap: true,
//                       itemCount: brandsLogo.length,
//                       itemBuilder: (context, index) {
//                         return GestureDetector(
//                           onTap: () {
//                             Navigator.of(context).push(
//                               MaterialPageRoute(
//                                 builder: (context) {
//                                   return ProductsScreen(
//                                     type: brandsList[index]["type"],
//                                     productMap: brandsList[index]["products"],
//                                   );
//                                 },
//                               ),
//                             );
//                           },
//                           child: Container(
//                               height: 230,
//                               width: 170,
//                               margin: EdgeInsets.only(left: 10),
//                               decoration: BoxDecoration(
//                                   //color:const Color.fromARGB(255, 235, 188, 244),
//                                   borderRadius: BorderRadius.circular(3),
//                                   border: Border.all(
//                                     color: const Color.fromARGB(
//                                         252, 158, 158, 158),
//                                     width: 2,
//                                   )
//                                   //color:Colors.
//                                   ),
//                               child: Column(
//                                 children: [
//                                   ClipOval(
//                                     clipBehavior: Clip.antiAlias,
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Container(
//                                         height: 150,
//                                         width: 150,
//                                         decoration: const BoxDecoration(
//                                           color: Color.fromARGB(
//                                               255, 231, 148, 245),
//                                           shape: BoxShape.circle,
//                                         ),
//                                         child: Image.asset(
//                                           height: 150,
//                                           // "assets/images/simple.jpg",
//                                           brandsLogo[index]["imageUrl"]!,
//                                           fit: BoxFit.cover,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     height: 15,
//                                   ),
//                                 ],
//                               )),
//                         );
//                       }),
//                 ),

//                 // ),

//                 const SizedBox(
//                   height: 20,
//                 ),

//                 Padding(
//                   padding: const EdgeInsets.only(left: 23),
//                   child: Container(
//                     height: 380,
//                     width: 360,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       color: const Color.fromARGB(255, 231, 148, 245),
//                     ),
//                     //color: Colors.black,

//                     child: Image.asset(
//                       "assets/problems/all.jpg",
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),

//                 const Padding(
//                   padding: EdgeInsets.all(8.0),
//                   child: Text(
//                     "Skin Problems",
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w600,
//                     ),
//                   ),
//                 ),

//                 const SizedBox(
//                   height: 10,
//                 ),
//                 SizedBox(
//                   height: 230,
//                   child: ListView.builder(
//                       scrollDirection: Axis.horizontal,
//                       shrinkWrap: true,
//                       itemCount: skinProblem.length,
//                       itemBuilder: (context, index) {
//                         return GestureDetector(
//                           onTap: () {
//                             Navigator.of(context).push(
//                               MaterialPageRoute(
//                                 builder: (context) {
//                                   return ProductsScreen(
//                                     type: skinProblem[index]["type"],
//                                     productMap: skinProblem[index]["products"],
//                                   );
//                                 },
//                               ),
//                             );
//                           },
//                           child: Container(
//                               height: 230,
//                               width: 170,
//                               margin: EdgeInsets.only(left: 10),
//                               decoration: BoxDecoration(

//                                   borderRadius: BorderRadius.circular(3),
//                                   border: Border.all(
//                                     color: const Color.fromARGB(
//                                         252, 158, 158, 158),
//                                     width: 2,
//                                   )
//                                   //color:Colors.
//                                   ),
//                               child: Column(
//                                 children: [
//                                   ClipOval(
//                                     clipBehavior: Clip.antiAlias,
//                                     child: Padding(
//                                       padding: const EdgeInsets.all(8.0),
//                                       child: Container(
//                                         height: 150,
//                                         width: 150,
//                                         decoration: const BoxDecoration(
//                                           color: Color.fromARGB(
//                                               255, 231, 148, 245),
//                                           shape: BoxShape.circle,
//                                         ),
//                                         child: Image.asset(
//                                           height: 150,
//                                           // "assets/images/simple.jpg",
//                                           skinProblemLogo[index]["imageUrl"],
//                                           fit: BoxFit.cover,
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                   const SizedBox(
//                                     height: 15,
//                                   ),
//                                   Text(
//                                     "${skinProblem[index]["type"]}",
//                                     style: const TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.w500,
//                                     ),
//                                   )
//                                 ],
//                               )),
//                         );
//                       }),
//                 ),
//               ]),
//         ]),
//       ),
//     );
//   }
// }

///////////////////////////////////////////////////////////////////////////////////////////////////
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:super_x_app/ankita/brands_list.dart';
// import 'package:super_x_app/ankita/item_list.dart';

// import 'package:super_x_app/ankita/products_screen.dart';
// import 'package:super_x_app/ankita/skin_problem_list.dart';
// import 'package:super_x_app/cartitem.dart';
// import 'package:super_x_app/CartButton.dart';
// import 'package:super_x_app/likeButton.dart';
// import 'package:super_x_app/wish_list.dart';

// class ScreenOne extends StatefulWidget {
//   const ScreenOne({super.key});

//   @override
//   State createState() => _ScreenOneState();
// }

// class _ScreenOneState extends State<ScreenOne> {
//   List filteredList = [];
//   List filteredBrandsList = [];
//   List filteredSkinProblemList = [];

//   String searchQuery = "";

//   @override
//   void initState() {
//     super.initState();
//     filteredList = itemList; // Initially display all items
//     filteredBrandsList = brandsList;
//     filteredSkinProblemList = skinProblem;
//   }

//   void filterSearch(String query) {
//     if (query.isEmpty) {
//       filteredList = itemList;
//       filteredBrandsList = brandsList;
//       filteredSkinProblemList = skinProblem;
//     } else {
//       filteredList = itemList
//           .where((item) =>
//               item["type"].toLowerCase().contains(query.toLowerCase()))
//           .toList();
//       filteredBrandsList = brandsList
//           .where((brand) =>
//               brand["type"].toLowerCase().contains(query.toLowerCase()))
//           .toList();
//       filteredSkinProblemList = skinProblem
//           .where((problem) =>
//               problem["type"].toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     }
//     setState(() {
//       searchQuery = query;
//     });
//   }

//   List dataList = [];

//   Future getFireStoreData() async {
//     QuerySnapshot data =
//         await FirebaseFirestore.instance.collection('cart').get();
//     for (int i = 0; i < data.docs.length; i++) {
//       dataList.add(CartItem(
//           id: data.docs[i]['id'],
//           image: data.docs[i]["imageUrl"],
//           Info: data.docs[i]["Info"],
//           productName: data.docs[i]["type"],
//           quantity: data.docs[i]["quantity"],
//           price: data.docs[i]["price"]));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           // widget.productMap["Male"][0]["name"],
//           " Bliss",
//           style: TextStyle(
//             fontSize: 28,
//             fontWeight: FontWeight.w700,
//             color: Color.fromRGBO(233, 227, 203, 1),
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: const Color.fromRGBO(90, 124, 118, 1),
//         leading: GestureDetector(
//             onTap: () {
//               Navigator.of(context).pop();
//             },
//             child: const Icon(Icons.arrow_back_ios_new, color: Colors.white)),
//         actions: [
//           GestureDetector(
//             child: GestureDetector(
//               onTap: () {
//                 Navigator.of(context)
//                     .push(MaterialPageRoute(builder: (context) {
//                   return MyWishlist();
//                 }));
//               },
//               child: const Icon(
//                 Icons.favorite,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//           const SizedBox(width: 15),
//           GestureDetector(
//             onTap: () {
//               Navigator.of(context).pushReplacement(
//                 MaterialPageRoute(
//                   builder: (context) => const CartButton(),
//                 ),
//               );
//             },
//             child: const Icon(
//               Icons.card_travel_outlined,
//               color: Colors.white,
//             ),
//           ),
//           SizedBox(width: 15),
//         ],
//       ),
//       //backgroundColor:Color.fromARGB(255, 241, 218, 245),),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Search Bar
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//               child: TextField(
//                 onChanged: filterSearch,
//                 decoration: InputDecoration(
//                   border: const OutlineInputBorder(),
//                   prefixIcon: const Icon(Icons.search),
//                   hintText: "Search for products",
//                   suffixIcon: Row(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       IconButton(
//                         icon: const Icon(Icons.mic_outlined),
//                         onPressed: () {
//                           // Voice search logic can be implemented here
//                         },
//                       ),
//                       IconButton(
//                         icon: const Icon(Icons.camera_alt_outlined),
//                         onPressed: () {
//                           // Camera search logic can be implemented here
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//             SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: ClipRRect(
//                       clipBehavior: Clip.antiAlias,
//                       borderRadius: const BorderRadius.all(Radius.circular(20)),
//                       child: Container(
//                         height: 290,
//                         width: 370,
//                         decoration: const BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(10))),
//                         child: GestureDetector(
//                           onTap: () {},
//                           child: Image.asset(
//                             "assets/images/pp.jpg",
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: ClipRRect(
//                       clipBehavior: Clip.antiAlias,
//                       borderRadius: const BorderRadius.all(Radius.circular(20)),
//                       child: Container(
//                         height: 290,
//                         width: 370,
//                         decoration: const BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(10))),
//                         child: GestureDetector(
//                           onTap: () {},
//                           child: Image.asset(
//                             "assets/images/product.jpg",
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: ClipRRect(
//                       clipBehavior: Clip.antiAlias,
//                       borderRadius: const BorderRadius.all(Radius.circular(20)),
//                       child: Container(
//                         height: 290,
//                         width: 370,
//                         decoration: const BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(10))),
//                         child: GestureDetector(
//                           onTap: () {
//                             // Navigator.of(context).push(
//                             //   MaterialPageRoute(
//                             //     builder: (context) {
//                             //       return SerumF();
//                             //     },
//                             //   ),
//                             // );
//                           },
//                           child: Image.asset(
//                             "assets/images/sirum.jpg",
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(10),
//                     child: ClipRRect(
//                       clipBehavior: Clip.hardEdge,
//                       borderRadius: const BorderRadius.all(Radius.circular(20)),
//                       child: Container(
//                         height: 290,
//                         width: 370,
//                         decoration: const BoxDecoration(
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(10))),
//                         child: GestureDetector(
//                           onTap: () {
//                             // Navigator.of(context).push(
//                             //   MaterialPageRoute(
//                             //     builder: (context) {
//                             //       return BodylotionF();
//                             //     },
//                             //   ),
//                             // );
//                           },
//                           child: Image.asset(
//                             "assets/images/vaseline.jpg",
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             const SizedBox(height: 10),
//             const SizedBox(
//               height: 10,
//             ),
//             const Padding(
//               padding: EdgeInsets.only(right: 260, left: 10),
//               child: Text(
//                 "Products",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),

//             // Display filtered results
//             SizedBox(
//               height: 230,
//               child: ListView.builder(
//                 scrollDirection: Axis.horizontal,
//                 itemCount: filteredList.length,
//                 itemBuilder: (context, index) {
//                   final item = filteredList[index];
//                   return GestureDetector(
//                     onTap: () {
//                       Navigator.of(context).push(
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return ProductsScreen(
//                               type: item["type"],
//                               productMap: item["products"],
//                             );
//                           },
//                         ),
//                       );
//                     },
//                     child: Container(
//                       height: 230,
//                       width: 170,
//                       margin: const EdgeInsets.only(left: 10),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(3),
//                         border: Border.all(
//                           color: const Color.fromARGB(252, 158, 158, 158),
//                           width: 2,
//                         ),
//                       ),
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Image.asset(
//                               height: 150,
//                               item["products"]["Male"][0]["imageUrl"],
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                           const SizedBox(height: 15),
//                           Text(
//                             item["type"],
//                             style: const TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w500,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ),
//             // Add other sections as needed...
//             const SizedBox(
//               height: 15,
//             ),

//             Padding(
//               padding: EdgeInsets.only(left: 10),
//               child: const Text(
//                 "Brands",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),

//             const SizedBox(
//               height: 10,
//             ),

//             ///////////////////////////////////////////////////////////////////////////////

//             SizedBox(
//               height: 230,
//               child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   shrinkWrap: true,
//                   itemCount: filteredBrandsList.length,
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: () {
//                         Navigator.of(context).push(
//                           MaterialPageRoute(
//                             builder: (context) {
//                               return ProductsScreen(
//                                 type: filteredBrandsList[index]["type"],
//                                 productMap: filteredBrandsList[index]
//                                     ["products"],
//                               );
//                             },
//                           ),
//                         );
//                       },
//                       child: Container(
//                           height: 230,
//                           width: 170,
//                           margin: EdgeInsets.only(left: 10),
//                           decoration: BoxDecoration(
//                               //color:const Color.fromARGB(255, 235, 188, 244),
//                               borderRadius: BorderRadius.circular(3),
//                               border: Border.all(
//                                 color: const Color.fromARGB(252, 158, 158, 158),
//                                 width: 2,
//                               )
//                               //color:Colors.
//                               ),
//                           child: Column(
//                             children: [
//                               ClipOval(
//                                 clipBehavior: Clip.antiAlias,
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Container(
//                                     height: 150,
//                                     width: 150,
//                                     decoration: const BoxDecoration(
//                                       color: Color.fromARGB(255, 231, 148, 245),
//                                       shape: BoxShape.circle,
//                                     ),
//                                     child: Image.asset(
//                                       height: 150,
//                                       // "assets/images/simple.jpg",
//                                       filteredBrandsList[index]["products"]
//                                           ["Male"][0]["brandLogo"],

//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 height: 15,
//                               ),
//                               Text(
//                                 "${filteredBrandsList[index]["type"]}",
//                                 style: const TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               )
//                             ],
//                           )),
//                     );
//                   }),
//             ),
//             /////////////////////////////////////////////////////////////////////////////////

//             const SizedBox(
//               height: 20,
//             ),

//             Padding(
//               padding: const EdgeInsets.only(left: 23),
//               child: Container(
//                 height: 380,
//                 width: 360,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   color: const Color.fromARGB(255, 231, 148, 245),
//                 ),
//                 //color: Colors.black,

//                 child: Image.asset(
//                   "assets/problems/all.jpg",
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 10,
//             ),

//             const Padding(
//               padding: EdgeInsets.all(8.0),
//               child: Text(
//                 "Skin Problems",
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//             ),
//             ////////////////////////////////////////////////////////////////////////

//             const SizedBox(
//               height: 10,
//             ),
//             SizedBox(
//               height: 230,
//               child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   shrinkWrap: true,
//                   itemCount: filteredSkinProblemList.length,
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: () {
//                         Navigator.of(context).push(
//                           MaterialPageRoute(
//                             builder: (context) {
//                               return ProductsScreen(
//                                 type: skinProblem[index]["type"],
//                                 productMap: skinProblem[index]["products"],
//                               );
//                             },
//                           ),
//                         );
//                       },
//                       child: Container(
//                           height: 230,
//                           width: 170,
//                           margin: EdgeInsets.only(left: 10),
//                           decoration: BoxDecoration(
//                               //color:const Color.fromARGB(255, 235, 188, 244),
//                               borderRadius: BorderRadius.circular(3),
//                               border: Border.all(
//                                 color: const Color.fromARGB(252, 158, 158, 158),
//                                 width: 2,
//                               )
//                               //color:Colors.
//                               ),
//                           child: Column(
//                             children: [
//                               ClipOval(
//                                 clipBehavior: Clip.antiAlias,
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Container(
//                                     height: 150,
//                                     width: 150,
//                                     decoration: const BoxDecoration(
//                                       color: Color.fromARGB(255, 231, 148, 245),
//                                       shape: BoxShape.circle,
//                                     ),
//                                     child: Image.asset(
//                                       height: 150,
//                                       // "assets/images/simple.jpg",
//                                       filteredSkinProblemList[index]["products"]
//                                           ["Male"][0]["brandLogo"],

//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(
//                                 height: 15,
//                               ),
//                               Text(
//                                 "${filteredSkinProblemList[index]["type"]}",
//                                 style: const TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w500,
//                                 ),
//                               )
//                             ],
//                           )),
//                     );
//                   }),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:async';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:super_x_app/LikeButton.dart';
import 'package:super_x_app/ankita/brands_list.dart';
import 'package:super_x_app/ankita/item_list.dart';
import 'package:super_x_app/ankita/products_screen.dart';
import 'package:super_x_app/ankita/skin_problem_list.dart';
import 'package:super_x_app/micScreen.dart';

class ScreenOne extends StatefulWidget {
  final String? micText;

  const ScreenOne({super.key, this.micText});

  @override
  State createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  final TextEditingController _searchController = TextEditingController();

  void getmicData() {
    String name = widget.micText!;
    _searchController.text = name;
    // setState(() {});
  }

  String _searchQuery = '';
  List<String> _filteredProducts = [];

  @override
  void initmicState() {
    super.initState();

    log("${widget.micText}");
    //_filteredProducts = products; // Access the list from products.dart
  }

  List filteredList = [];
  List filteredBrandsList = [];
  List filteredSkinProblemList = [];

  String searchQuery = "";

  @override
  void initState() {
    super.initState();

    getmicData();
    filterSearch(widget.micText!);
    if (widget.micText == null) {
      filteredList = itemList; // Initially display all items
      filteredBrandsList = brandsList;
      filteredSkinProblemList = skinProblem;
    }
  }

  void filterSearch(
    String query,
  ) {
    log("FILTER SEARCH");
    if (query.isEmpty) {
      filteredList = itemList;
      filteredBrandsList = brandsList;
      filteredSkinProblemList = skinProblem;
    } else {
      filteredList = itemList
          .where((item) =>
              item["type"].toLowerCase().contains(query.toLowerCase()))
          .toList();
      filteredBrandsList = brandsList
          .where((brand) =>
              brand["type"].toLowerCase().contains(query.toLowerCase()))
          .toList();
      filteredSkinProblemList = skinProblem
          .where((problem) =>
              problem["type"].toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    setState(() {
      searchQuery = query;
    });
  }
////////////////////////////////////////////////////////////////////////////////////////////////

  // Future<void> _openCamera() async {
  //   final ImagePicker picker = ImagePicker();
  //   final XFile? image = await picker.pickImage(source: ImageSource.camera);
  //   final XFile? gallery = await picker.pickImage(source: ImageSource.gallery);

  //   if (image != null) {
  //     File imageFile = File(image.path);

  //     showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: const Text('Captured Image'),
  //           content: Image.file(imageFile),
  //           actions: [
  //             TextButton(
  //               onPressed: () => Navigator.of(context).pop(),
  //               child: const Text('OK'),
  //             ),
  //           ],
  //         );
  //       },
  //     );
  //   }
  // }

  ////////////////////////////////////////////////////////////////////////////////////////////////
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromRGBO(233, 227, 203, 1),
      appBar: AppBar(
        title: const Text(
          " Bliss",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(90, 124, 118, 1),
        // leading: GestureDetector(
        //     onTap: () {
        //       Navigator.of(context).pop();
        //     },
        //     child: const Icon(Icons.arrow_back_ios_new, color: Colors.white)),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MyWishlist(),
                ),
              );
            },
            child: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: TextField(
                controller: _searchController,
                onChanged: filterSearch,
                onSubmitted: (val) {
                  log("SEARCH DATA");
                  filterSearch(val);
                },
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.search),
                  hintText: "Search for products",
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(
                          Icons.mic,
                          //color: _isListening ? Colors.red : Colors.black,
                        ),
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return MicScreen();
                          }));
                          log(widget.micText!);
                          String textWord = widget.micText!;
                          _searchController.text = textWord;
                          log("${_searchController.text}");
                          setState(() {});
                          // _speechToText.isNotListening ? _startListening : _stopListening;
                        },
                      ),
                      //    IconButton(
                      // icon: const Icon(Icons.camera_alt_outlined),
                      //      onPressed: _openCamera,
                      //    ),
                    ],
                  ),
                ),
              ),
            ),

            const ImageCarousel(),

            const SizedBox(height: 10),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 260, left: 10),
              child: Text(
                "Products",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // Display filtered results
            SizedBox(
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filteredList.length,
                itemBuilder: (context, index) {
                  final item = filteredList[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ProductsScreen(
                              type: filteredList[index]["type"],
                              productMap: filteredList[index]["products"],

                              //type: item["type"],
                              //productMap: item["products"],
                            );
                          },
                        ),
                      );
                    },
                    child: Card(
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Container(
                        height: 230,
                        width: 170,
                        margin: const EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          border: Border.all(
                            color: const Color.fromARGB(252, 158, 158, 158),
                            width: 2,
                          ),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ),
                                child: Card(
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Image.asset(
                                    height: 150,
                                    item["products"]["Male"][0]["imageUrl"],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              item["type"],
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Add other sections as needed...
            const SizedBox(
              height: 15,
            ),

            Image.asset("assets/images/skinGlow.jpg"),

            const SizedBox(
              height: 15,
            ),

            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: const Text(
                "Brands",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            ///////////////////////////////////////////////////////////////////////////////

            SizedBox(
              height: 230,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: filteredBrandsList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return ProductsScreen(
                                type: filteredBrandsList[index]["type"],
                                productMap: filteredBrandsList[index]
                                    ["products"],
                              );
                            },
                          ),
                        );
                      },
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                            height: 230,
                            width: 170,
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                //color:const Color.fromARGB(255, 235, 188, 244),
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                  color:
                                      const Color.fromARGB(252, 158, 158, 158),
                                  width: 2,
                                )
                                //color:Colors.
                                ),
                            child: Column(
                              children: [
                                //ClipOval(
                                // clipBehavior: Clip.antiAlias,
                                Card(
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Container(
                                    height: 145,
                                    width: 145,
                                    decoration: const BoxDecoration(
                                        //color: Color.fromARGB(255, 231, 148, 245),
                                        // shape: BoxShape.circle,

                                        ),
                                    child: ClipRRect(
                                      // borderRadius:  BorderRadius.circular(10),
                                      // clipBehavior: Clip.antiAlias,

                                      // topLeft: Radius.circular(10),
                                      //topRight: Radius.circular(10),
                                      child: Image.asset(
                                        height: 150,
                                        // "assets/images/simple.jpg",
                                        filteredBrandsList[index]["products"]
                                            ["Male"][0]["brandLogo"],

                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                // ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  "${filteredBrandsList[index]["type"]}",
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            )),
                      ),
                    );
                  }),
            ),
            /////////////////////////////////////////////////////////////////////////////////

            const SizedBox(
              height: 20,
            ),

            //

            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Container(
                height: 380,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 231, 148, 245),
                ),
                //color: Colors.black,

                child: Image.asset(
                  "assets/problems/all.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Skin Problems",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ////////////////////////////////////////////////////////////////////////

            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 230,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: filteredSkinProblemList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return ProductsScreen(
                                type: skinProblem[index]["type"],
                                productMap: skinProblem[index]["products"],
                              );
                            },
                          ),
                        );
                      },
                      child: Card(
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Container(
                            height: 230,
                            width: 170,
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                                // shape: BoxShape.circle,
                                //color:const Color.fromARGB(255, 235, 188, 244),
                                // borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                              color: const Color.fromARGB(252, 158, 158, 158),
                              width: 2,
                            )
                                //color:Colors.
                                ),
                            child: Column(
                              children: [
                                ClipOval(
                                  clipBehavior: Clip.antiAlias,
                                  child: Container(
                                    height: 148,
                                    width: 148,
                                    decoration: const BoxDecoration(
                                      //color: Color.fromARGB(255, 231, 148, 245),
                                      shape: BoxShape.circle,
                                    ),
                                    child: Card(
                                      elevation: 3,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Image.asset(
                                        height: 150,
                                        // "assets/images/simple.jpg",
                                        filteredSkinProblemList[index]
                                                ["products"]["Male"][0]
                                            ["brandLogo"],

                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${filteredSkinProblemList[index]["type"]}",
                                  style: const TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )
                              ],
                            )),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}

// Image Carousel Widget (unchanged)
class ImageCarousel extends StatefulWidget {
  const ImageCarousel({super.key});

  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  PageController _pageController = PageController();
  int _currentPage = 0;
  Timer? _timer;

  final List<String> _images = [
    "assets/images/pp.jpg",
    "assets/images/product.jpg",
    "assets/images/sirum.jpg",
    "assets/images/vaseline.jpg",
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < _images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }
      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(252, 158, 158, 158),
          ),
        ),
        height: 300,
        child: PageView.builder(
          controller: _pageController,
          onPageChanged: (index) => _currentPage = index,
          itemCount: _images.length,
          itemBuilder: (context, index) {
            return Image.asset(
              _images[index],
              fit: BoxFit.cover,
            );
          },
        ),
      ),
    );
  }
}
