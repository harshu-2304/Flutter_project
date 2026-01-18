import 'package:flutter/material.dart';
import 'package:super_x_app/Screen2.dart';

import 'package:super_x_app/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyB9FN1n_tYpU6usEs4BMk-6Tqu3skmN0rM",
      appId: "1:562558908903:android:9182fc04fe27485645a542",
      messagingSenderId: "562558908903",
      projectId: "superx-app-f079f",
    ),
  );
  runApp(const MainApp());
  // for (var value in skinProblem) {
  //   await FirebaseFirestore.instance.collection("SkinProblems").add(value);
  //}
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
