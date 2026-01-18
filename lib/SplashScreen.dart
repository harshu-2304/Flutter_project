import 'dart:async';

import 'package:flutter/material.dart';
import 'package:super_x_app/Screen2.dart';

class Splashscreen extends StatelessWidget {
  const Splashscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen1(), // Set SplashScreen as the initial screen
    );
  }
}

class SplashScreen1 extends StatefulWidget {
  @override
  State<SplashScreen1> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen1> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/final logosplash.avif",
              width: 200,
              fit: BoxFit.cover,
              filterQuality: FilterQuality.high,
            ),
          ),
        ],
      ),
    );
  }
}

// import 'dart:async';
// import 'dart:developer';

// import 'package:flutter/material.dart';
// import 'package:super_x_app/PlayerInfo.dart';
// //import 'package:flutter_svg/flutter_svg.dart';
// import 'package:super_x_app/Screen2.dart';
// import 'package:super_x_app/SessionData.dart';
// import 'package:super_x_app/navBar.dart';

// // class SplashScreen1 extends StatefulWidget {
// //   @override
// //   State<SplashScreen1> createState() => _SplashScreenState();
// // }

// // class _SplashScreenState extends State<SplashScreen1> {
// //   @override
// //   void initState() {
// //     super.initState();

// //     Timer(const Duration(seconds: 5), () {
// //       Navigator.of(context).pushReplacement(
// //         MaterialPageRoute(
// //           builder: (context) => const LoginScreen(),
// //         ),
// //       );
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Color.fromRGBO(255, 255, 255, 1),
// //       body: Column(
// //         crossAxisAlignment: CrossAxisAlignment.center,
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           Center(
// //             child: Image.asset(
// //               "assets/final logosplash.avif",
// //               width: 200,
// //               fit: BoxFit.cover,
// //               filterQuality: FilterQuality.high,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// class SplashScreen extends StatelessWidget {
//   const SplashScreen({super.key});

//   void navigate(BuildContext context) {
//     Future.delayed(const Duration(seconds: 3), () async {
//       bool status = false;

//       await SessionData.getSessionData();
//       print(SessionData.isLogin);
//       print("IS LOGIN:${SessionData.isLogin}");
//       if (SessionData.isLogin!) {
//         print("NAVIGATE TO HOME");
//         Navigator.of(context)
//             .pushReplacement(MaterialPageRoute(builder: (context) {
//           return Navbar();
//         }));
//       } else {
//         print("NAVIGATE TO LOGIN");
//         Navigator.of(context)
//             .pushReplacement(MaterialPageRoute(builder: (context) {
//           return LoginScreen();
//         }));
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     navigate(context);
//     print("IN BUILD");
//     return Scaffold(
//         body: Center(
//             child: SizedBox(
//       width: 250,
//       height: 250,
//       child: Image.asset("assets/final logosplash.avif"),
//     )));
//   }
// }
