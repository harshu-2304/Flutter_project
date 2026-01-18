// import 'dart:ffi';
// import 'dart:io';
// //import 'dart:js_interop';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/material.dart';
// import 'package:super_x_app/palyer_model.dart';
// import 'package:firebase_core/firebase_core.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(
//       options: const FirebaseOptions(
//           apiKey: "AIzaSyB9FN1n_tYpU6usEs4BMk-6Tqu3skmN0rM",
//           appId: "1:562558908903:android:9182fc04fe27485645a542",
//           messagingSenderId: "562558908903",
//           projectId: "superx-app-f079f"));
//   runApp(const MyApp());
//   // final List<Map<String, String>> products = [
//   //   {
//   //     "name": "Cleanser",
//   //     "type": "Cetaphil",
//   //     "price": "₹375",
//   //     "imageUrl": "assets/Images/citaphil.jpeg"
//   //   },
//   //   {
//   //     "name": "Moisturizer",
//   //     "type": "Derma co",
//   //     "price": "₹321",
//   //     "imageUrl": "assets/Images/derma mois.jpeg"
//   //   },
//   //   {
//   //     "name": "Face Wash",
//   //     "type": "Pounds",
//   //     "price": "₹399",
//   //     "imageUrl": "assets/Images/poundspimple.jpeg"
//   //   },
//   //   {
//   //     "name": "FaceWash",
//   //     "type": "Derma Co",
//   //     "price": "₹1076",
//   //     "imageUrl": "assets/Images/derma cofacewash.jpeg"
//   //   },
//   //   {
//   //     "name": "Acne Patch",
//   //     "type": "Sanfe",
//   //     "price": "₹281",
//   //     "imageUrl": "assets/Images/sanfeacnepatch.jpeg"
//   //   },
//   //   {
//   //     "name": "Serum",
//   //     "type": "Minimilist",
//   //     "price": "₹566",
//   //     "imageUrl": "assets/Images/minisal.jpeg"
//   //   },
//   //   {
//   //     "name": "Serum",
//   //     "type": "Plix",
//   //     "price": "₹311",
//   //     "imageUrl": "assets/Images/plixserum.jpeg"
//   //   },
//   //   {
//   //     "name": "Moisturizer",
//   //     "type": "Dot & Key",
//   //     "price": "₹479",
//   //     "imageUrl": "assets/Images/dot cica mois.webp"
//   //   },
//   //   {
//   //     "name": "face wash",
//   //     "type": "Dot & Key",
//   //     "price": "₹212",
//   //     "imageUrl": "assets/Images/dot face moisture.jpeg"
//   //   },
//   //   {
//   //     "name": "Face Wash",
//   //     "type": "biotique",
//   //     "price": "₹426",
//   //     "imageUrl": "assets/Images/biowash.jpeg"
//   //   },
//   // ];
//   // for (var value in products) {
//   //   await FirebaseFirestore.instance.collection("Products").add(value);
//   // }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(title: 'Firebase App', home: PlayersInfo());
//   }
// }

// class PlayersInfo extends StatefulWidget {
//   const PlayersInfo({super.key, email});
//   @override
//   State<PlayersInfo> createState() => _PlayersInfoState();
// }

// class _PlayersInfoState extends State<PlayersInfo> {
//   TextEditingController playerNameTextController = TextEditingController();
//   TextEditingController jerseyNoTextController = TextEditingController();
//   List<PlayerModel> playersList = [];

//   // final ImagePicker _imagePicker = ImagePicker();
//   // XFile? _selectedFile;

//   // Future<void> uploadImage({required String filename}) async {
//   //   print("ADD IMAGE TO FIREBASE");
//   //   await FirebaseStorage.instance
//   //       .ref()
//   //       .child(filename)
//   //       .putFile(File(_selectedFile!.path));
//   // }

//   // Future<String> downloadImageURL({required String filename}) async {
//   //   print("GET URL TO FIREBASE");
//   //   String url =
//   //       await FirebaseStorage.instance.ref().child(filename).getDownloadURL();
//   //   return url;
//   // }

//   void addDataToFirebase() {
//     print("UPLOAD DATA TO CLOUD");

//     Map<String, dynamic> data = {
//       // 'profilePic': url,
//       'playerName': playerNameTextController.text.trim(),
//       'jerseyNo': jerseyNoTextController.text.trim(),
//     };

//     FirebaseFirestore.instance.collection("playersInfo").add(data);

//     playerNameTextController.clear();
//     jerseyNoTextController.clear();
//     // _selectedFile = null;
//     ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
//       content: Text("Data added"),
//     ));
//   }

//   Future<void> getDataFromFirebase() async {
//     playersList.clear();
//     QuerySnapshot response =
//         await FirebaseFirestore.instance.collection("playersInfo").get();
//     for (var value in response.docs) {
//       print("Value:${value['playerName']}");
//       playersList.add(PlayerModel(
//         playerName: value['playerName'],
//         playerId: value.id,
//         jerseyNo: value['jerseyNo'],
//         profilePic: value['profilepic'],
//       ));
//     }
//     print("LENGTH OF PLAYERS LIST:${playersList.length}");
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text(
//           "Firebase Player App",
//           style: TextStyle(
//             fontSize: 25,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//         actions: [
//           GestureDetector(
//             onTap: () {},
//             child: const Icon(Icons.logout),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           const SizedBox(
//             height: 20,
//           ),
//           GestureDetector(
//             onTap: () async {
//               // _selectedFile =
//               //     await _imagePicker.pickImage(source: ImageSource.gallery);
//               // if (_selectedFile != null) {
//               //   print("File= ${_selectedFile!.path}");
//               //   setState(() {});
//               // }
//             },
//             child: Container(
//               width: 120,
//               height: 120,
//               clipBehavior: Clip.antiAlias,
//               decoration: BoxDecoration(
//                 color: Colors.amber,
//                 borderRadius: BorderRadius.circular(60),
//               ),
//               // child: (_selectedFile == null)
//               //     ? Image.network(
//               //         "https://icons.veryicon.com/png/o/miscellaneous/standard/avatar-15.png")
//               //     : Image.file(
//               //         File(_selectedFile!.path),
//               //         fit: BoxFit.cover,
//               //       )
//             ),
//           ),

//           /// PLAYER NAME
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: TextField(
//               controller: playerNameTextController,
//               style: const TextStyle(
//                 fontSize: 18,
//                 color: Colors.white,
//               ),
//               decoration: const InputDecoration(
//                 hintText: "Enter Player Name",
//                 hintStyle: TextStyle(
//                   fontSize: 18,
//                   color: Colors.white,
//                 ),
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),

//           /// PLAYER JERSEY NO
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: TextField(
//               controller: jerseyNoTextController,
//               style: const TextStyle(
//                 fontSize: 18,
//                 color: Colors.white,
//               ),
//               decoration: const InputDecoration(
//                 hintText: "Enter Player Jersey No.",
//                 hintStyle: TextStyle(
//                   fontSize: 18,
//                   color: Colors.white,
//                 ),
//                 border: OutlineInputBorder(),
//               ),
//               keyboardType: TextInputType.number,
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           GestureDetector(
//             onTap: () async {
//               // if (playerNameTextController.text.trim().isNotEmpty &&
//               //   //   jerseyNoTextController.text.trim().isNotEmpty) {
//               //   // String fileName =
//               //   //     _selectedFile!.name + DateTime.now().toString();
//               //   // await uploadImage(filename: fileName);
//               //   // String url = await downloadImageURL(filename: fileName);
//               //   // addDataToFirebase(url: url);
//               //   // await getDataFromFirebase();
//               //   // setState(() {});
//               // }
//               addDataToFirebase();
//             },
//             child: Container(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 15,
//                 vertical: 5,
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(25),
//               ),
//               child: const Text(
//                 "Submit",
//                 style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           GestureDetector(
//             onTap: () async {
//               await getDataFromFirebase();
//               setState(() {});
//             },
//             child: Container(
//               padding: const EdgeInsets.symmetric(
//                 horizontal: 15,
//                 vertical: 5,
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//                 borderRadius: BorderRadius.circular(25),
//               ),
//               child: const Text(
//                 "Display",
//                 style: TextStyle(
//                   fontSize: 25,
//                   color: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: playersList.length,
//               shrinkWrap: true,
//               itemBuilder: (context, index) {
//                 return Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20.0),
//                     color: Colors.grey[200],
//                   ),
//                   padding: const EdgeInsets.all(20.0),
//                   margin: const EdgeInsets.all(10.0),
//                   child: Row(
//                     children: [
//                       Container(
//                         clipBehavior: Clip.antiAlias,
//                         decoration: const BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Colors.grey,
//                         ),
//                         child: Image.network(
//                           playersList[index].profilePic,
//                           width: 80,
//                           height: 80,
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       const SizedBox(width: 20),
//                       Expanded(
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               "Player Name:${playersList[index].playerName}",
//                               style: const TextStyle(
//                                 fontSize: 18,
//                               ),
//                             ),
//                             const SizedBox(
//                               height: 10,
//                             ),
//                             Text(
//                               "Jersey No: ${playersList[index].jerseyNo}",
//                               style: const TextStyle(
//                                 fontSize: 18,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
