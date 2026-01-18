import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:super_x_app/RegisterModel.dart';
import 'package:super_x_app/Screen2.dart';

class Navscreen extends StatefulWidget {
  const Navscreen({super.key});

  @override
  State<Navscreen> createState() => _NavscreenState();
}

class _NavscreenState extends State<Navscreen> {
  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      addressDataMethod();
    });
  }

  List<Registermodel> Data = [];

  void addressDataMethod() async {
    QuerySnapshot respo =
        await FirebaseFirestore.instance.collection("userdata").get();
    log("adding data");
    for (var value in respo.docs) {
      // log("NAME :- ${response.docs[i]['name']}");
      Data.add(Registermodel(
          gender: value['gender'],
          favbrand: value['favbrand'],
          email: value['email'],
          phoneNo: value['phoneNo']));
    }
    log("$Data");
    setState(() {});
  }

  Future<void> signOut() async {
    await _auth.signOut();
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(' Sign Out'),
        duration: Duration(seconds: 2),
      ),
    );

    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const LoginScreen();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Profile',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    ClipOval(
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        width: 100, // Adjust the width and height as needed
                        height: 100,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: Image.asset(
                          "assets/images/avtarfemale.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          // Text(item["name"]),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              Data[0].email,
                              style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(90, 124, 118, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(Data[0].gender,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(90, 124, 118, 1),
                                )),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      height: 60,
                      decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(Data[0].phoneNo,
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(90, 124, 118, 1),
                                )),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 90,
                    ),
                    ElevatedButton(
                        style: const ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll(
                          Color.fromRGBO(90, 124, 118, 1),
                        )),
                        onPressed: () {
                          signOut();
                        },
                        child: const Text("Log  Out ",
                            style: TextStyle(color: Colors.white)))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
