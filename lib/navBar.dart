import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:super_x_app/CartButton.dart';
import 'package:super_x_app/ScreenOne.dart';
import 'package:super_x_app/navScreen.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _currentIndex = 0;
  final List screenList = [
    ////////////////////

    const ScreenOne(
      micText: "",
    ),
    const CartButton(),
    const Navscreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screenList.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromRGBO(90, 124, 118, 1),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.add_shopping_cart_sharp,
              color: Colors.white,
            ),
            label: 'Cart',
          ),
          const BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white,
            ),
            label: 'Profile',

            // color: Color.fromARGB(205, 0, 0, 0),
          ),
        ],
        selectedItemColor: const Color.fromARGB(255, 26, 103, 235),
        selectedLabelStyle: const TextStyle(
          fontSize: 18, // Increase size for selected label
          fontWeight: FontWeight.bold,
        ),
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: const TextStyle(
          fontSize: 16, // Increase size for unselected label
        ),
      ),
    );
  }
}
