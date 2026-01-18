import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:super_x_app/RegisterModel.dart';
import 'package:super_x_app/Screen2.dart';
import 'package:super_x_app/custom_Snackbar.dart';

class Registerscreen extends StatefulWidget {
  final Registermodel? registermodel;
  final Registerdata;
  const Registerscreen({super.key, this.registermodel, this.Registerdata});

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  void initState() {
    log("ADDED DATA := ${widget.Registerdata}");
    super.initState();
  }

  List Data = [];
//Controllers for the delivery address fields
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _favbrandController = TextEditingController();

  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    _genderController.dispose();
    _favbrandController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void submit([Registermodel? demo]) {
    if (_genderController.text.trim().isNotEmpty &&
        _favbrandController.text.trim().isNotEmpty &&
        _phoneController.text.trim().isNotEmpty) ;
  }

  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: const Color.fromARGB(255, 254, 254, 254),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 254, 254, 254),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const LoginScreen();
            }));
          },
          child: const Icon(
            Icons.arrow_back_ios_new_sharp,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 100,
              ),
              const Text(
                "Register",
                style: TextStyle(
                  fontSize: 40,
                  color: Color.fromRGBO(90, 124, 118, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: _emailTextEditingController,
                  style: const TextStyle(
                    color: Color.fromRGBO(90, 124, 118, 1),
                    fontSize: 20,
                  ),
                  decoration: InputDecoration(
                    labelText: "Enter your email",
                    prefixIcon: const Icon(Icons.email),
                    labelStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(90, 124, 118, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(108, 180, 167, 1),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: _passwordTextEditingController,
                  style: const TextStyle(
                      color: Color.fromRGBO(90, 124, 118, 1), fontSize: 20),
                  obscureText: _showPassword,
                  decoration: InputDecoration(
                    labelText: "Enter your Password",
                    prefixIcon: const Icon(Icons.lock),
                    labelStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(90, 124, 118, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(90, 124, 118, 1),
                      ),
                    ),
                    suffixIcon: GestureDetector(
                        onTap: () {
                          _showPassword = !_showPassword;
                          setState(() {});
                        },
                        child: Icon(
                          (_showPassword)
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.black,
                        )),
                  ),
                ),
              ),

              const SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextFormField(
                  controller: _genderController,
                  style: const TextStyle(
                      color: Color.fromRGBO(90, 124, 118, 1), fontSize: 20),
                  decoration: InputDecoration(
                    labelText: 'Gender (Male/Female)',
                    prefixIcon: const Icon(Icons.female),
                    labelStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(90, 124, 118, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(90, 124, 118, 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(90, 124, 118, 1),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: _favbrandController,
                  style: const TextStyle(
                      color: Color.fromRGBO(90, 124, 118, 1), fontSize: 20),
                  decoration: InputDecoration(
                    labelText: "favorite Brand  (derma/dove/pilgrim/nivea)",
                    prefixIcon: const Icon(Icons.face_sharp),
                    labelStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromRGBO(90, 124, 118, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(90, 124, 118, 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(90, 124, 118, 1),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: _phoneController,
                  style: const TextStyle(
                      color: Color.fromRGBO(90, 124, 118, 1), fontSize: 20),
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.phone),
                    labelText: "Phone Number",
                    labelStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(90, 124, 118, 1),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    hintStyle: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(90, 124, 118, 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(90, 124, 118, 1),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // GestureDetector(onTap: () async {
              //   Map<String, dynamic> RegisterData = {
              //     "gender": _genderController.text,
              //     "favbrand": _favbrandController.text,
              //     "phoneNo": _phoneController.text
              //   };

              //   await FirebaseFirestore.instance
              //       .collection("userdata")
              //       .add(RegisterData);

              //   Data.add(Registermodel(
              //       gender: _genderController.text,
              //       favbrand: _favbrandController.text,
              //       phoneNo: _phoneController.text));
              // }),

              GestureDetector(
                  onTap: () async {
                    Map<String, dynamic> RegisterData = {
                      "gender": _genderController.text,
                      "favbrand": _favbrandController.text,
                      "phoneNo": _phoneController.text,
                      "email": _emailTextEditingController.text,
                    };
                    if (_genderController.text.trim().isNotEmpty &&
                        _favbrandController.text.trim().isNotEmpty &&
                        _phoneController.text.trim().isNotEmpty) {
                      await FirebaseFirestore.instance
                          .collection("userdata")
                          .add(RegisterData);

                      Data.add(Registermodel(
                        gender: _genderController.text,
                        favbrand: _favbrandController.text,
                        phoneNo: _phoneController.text,
                        email: _emailTextEditingController.text,
                      ));
                    }

                    if (_emailTextEditingController.text.trim().isNotEmpty &&
                        _passwordTextEditingController.text.trim().isNotEmpty) {
                      try {
                        UserCredential userCredential =
                            await _firebaseAuth.createUserWithEmailAndPassword(
                          email: _emailTextEditingController.text.trim(),
                          password: _passwordTextEditingController.text.trim(),
                        );
                        log("UserCredentials : $userCredential");

                        CustomSnackbar.showCustomSnackbar(
                          message: "User Register Successfully",
                          context: context,
                        );
                        // Navigator.of(context).pop();
                        Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) {
                            return const LoginScreen();
                          },
                        ));
                      } on FirebaseAuthException catch (error) {
                        print("${error.code}");
                        print("${error.message}");
                        CustomSnackbar.showCustomSnackbar(
                          message: error.message!,
                          context: context,
                        );
                      }
                    } else {
                      CustomSnackbar.showCustomSnackbar(
                        message: "please enter valid fields",
                        context: context,
                      );
                    }
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: const Color.fromRGBO(90, 124, 118, 1),
                        borderRadius: BorderRadius.circular(30.0)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 5.0),
                    child: const Text(
                      "Register User",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromRGBO(248, 242, 242, 1),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}




































































// import 'dart:developer';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:super_x_app/custom_Snackbar.dart';

// class Registerscreen extends StatefulWidget {
//   const Registerscreen({super.key});

//   @override
//   State<Registerscreen> createState() => _RegisterscreenState();
// }

// class _RegisterscreenState extends State<Registerscreen> {
//   final TextEditingController _emailTextEditingController =
//       TextEditingController();
//   final TextEditingController _passwordTextEditingController =
//       TextEditingController();

//   final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

//   bool _showPassword = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color.fromRGBO(233, 227, 203, 1),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Text(
//             "Register",
//             style: TextStyle(
//               fontSize: 40,
//               color: Colors.black,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(15),
//             child: TextField(
//               controller: _emailTextEditingController,
//               style: const TextStyle(
//                 color: Color.fromRGBO(90, 124, 118, 1),
//                 fontSize: 20,
//               ),
//               decoration: const InputDecoration(
//                 hintText: "Enter your email",
//                 hintStyle: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w600,
//                   color: Color.fromRGBO(90, 124, 118, 1),
//                 ),
//                 border: OutlineInputBorder(
//                   borderSide: BorderSide(color: Colors.white),
//                 ),
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Color.fromRGBO(90, 124, 118, 1),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(15),
//             child: TextField(
//               controller: _passwordTextEditingController,
//               style: const TextStyle(
//                   color: Color.fromRGBO(90, 124, 118, 1), fontSize: 20),
//               obscureText: _showPassword,
//               decoration: InputDecoration(
//                 hintText: "Enter your Password",
//                 border: const OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.white,
//                   ),
//                 ),
//                 hintStyle: const TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.w600,
//                   color: Color.fromRGBO(90, 124, 118, 1),
//                 ),
//                 enabledBorder: const OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Color.fromRGBO(90, 124, 118, 1),
//                   ),
//                 ),
//                 suffixIcon: GestureDetector(
//                     onTap: () {
//                       _showPassword = !_showPassword;
//                       setState(() {});
//                     },
//                     child: Icon(
//                       (_showPassword) ? Icons.visibility_off : Icons.visibility,
//                       color: Colors.black,
//                     )),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           GestureDetector(
//               onTap: () async {
//                 if (_emailTextEditingController.text.trim().isNotEmpty &&
//                     _passwordTextEditingController.text.trim().isNotEmpty) {
//                   try {
//                     UserCredential userCredential =
//                         await _firebaseAuth.createUserWithEmailAndPassword(
//                       email: _emailTextEditingController.text.trim(),
//                       password: _passwordTextEditingController.text.trim(),
//                     );
//                     log("UserCredentials : $userCredential");

//                     CustomSnackbar.showCustomSnackbar(
//                       message: "User Register Successfully",
//                       context: context,
//                     );
//                     Navigator.of(context).pop();
//                   } on FirebaseAuthException catch (error) {
//                     print("${error.code}");
//                     print("${error.message}");
//                     CustomSnackbar.showCustomSnackbar(
//                       message: error.message!,
//                       context: context,
//                     );
//                   }
//                 } else {
//                   CustomSnackbar.showCustomSnackbar(
//                     message: "please enter valid fields",
//                     context: context,
//                   );
//                 }
//               },
//               child: Container(
//                 decoration: BoxDecoration(
//                     color: const Color.fromRGBO(90, 124, 118, 1),
//                     borderRadius: BorderRadius.circular(30.0)),
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
//                 child: const Text(
//                   "Register User",
//                   style: TextStyle(
//                     fontSize: 25,
//                     color: Color.fromRGBO(233, 227, 203, 1),
//                   ),
//                 ),
//               )),
//           const SizedBox(
//             height: 40,
//           ),
//         ],
//       ),
//     );
//   }
// }