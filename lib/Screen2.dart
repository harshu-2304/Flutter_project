import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_x_app/SessionData.dart';

import 'package:super_x_app/custom_Snackbar.dart';
import 'package:super_x_app/navBar.dart';
import 'package:super_x_app/registerScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordtextEditingController =
      TextEditingController();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  bool _showPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/final logosplash.avif",
            height: 150,
          ),
          Text(
            "Welcome To Bliss",
            style: GoogleFonts.lato(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              color: const Color.fromRGBO(90, 124, 118, 1),
            ),
          ),
          const Text(
            "SELF CARE IS NEW HEALTH CARE",
            style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(54, 75, 72, 1),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: _emailTextEditingController,
              style: const TextStyle(
                color: Color.fromRGBO(90, 124, 118, 1),
                fontSize: 20,
              ),
              decoration: InputDecoration(
                hintText: "Enter your email",
                prefixIcon: const Icon(Icons.email),
                hintStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(90, 124, 118, 1),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: Color.fromRGBO(90, 124, 118, 1),
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color.fromRGBO(90, 124, 118, 1),
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
              controller: _passwordtextEditingController,
              style: const TextStyle(
                color: Color.fromRGBO(90, 124, 118, 1),
                fontSize: 20,
              ),
              obscureText: _showPassword,
              decoration: InputDecoration(
                  hintText: "Enter your password",
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  hintStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromRGBO(90, 124, 118, 1),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color.fromRGBO(90, 124, 118, 1),
                    ),
                  ),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      _showPassword = !_showPassword;
                      setState(() {});
                    },
                    child: Icon(
                      (_showPassword) ? Icons.visibility_off : Icons.visibility,
                      color: const Color.fromRGBO(90, 124, 118, 1),
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
              onTap: () async {
                if (_emailTextEditingController.text.trim().isNotEmpty &&
                    _passwordtextEditingController.text.trim().isNotEmpty) {
                  UserCredential? userCredentials;
                  try {
                    userCredentials =
                        await _firebaseAuth.signInWithEmailAndPassword(
                      email: _emailTextEditingController.text.trim(),
                      password: _passwordtextEditingController.text.trim(),
                    );
                    log(" C2W :UserCredentials : ${userCredentials!.user!.email}");

                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) {
                        return const Navbar();
                      }),
                    );
                  } on FirebaseAuthException catch (error) {
                    log("C2W:ERROR:${error.code}");
                    log("C2W:ERROR:${error.message}");

                    CustomSnackbar.showCustomSnackbar(
                      message: error.code,
                      context: context,
                    );
                  }
                }
              },
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(90, 124, 118, 1),
                    borderRadius: BorderRadius.circular(30.0)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 40.0, vertical: 5.0),
                child: const Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.normal,
                      color: Colors.white),
                ),
              )),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return const Registerscreen();
                },
              ));
            },
            child: const Text(
              "Create new account ? Register",
              style: TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(90, 124, 118, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
