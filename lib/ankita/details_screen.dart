import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:super_x_app/ankita/order_summary.dart';

class DetailsScreen extends StatefulWidget {
//final Map orderMap;

  const DetailsScreen({super.key, required this.product});
  final Map<String, dynamic> product;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  List CartdData = [];
  bool isFavorite = false;
  final user = FirebaseAuth.instance.currentUser;

  Future<void> addToWishlist() async {
    // if (user == null) {
    //   return;
    // }

    Map<String, dynamic> fav = {
      "image": widget.product["imageUrl"],
      "product": widget.product["type"],
      "info": widget.product["Info"],
      "price": widget.product["price"]
    };
    FirebaseFirestore.instance.collection("mywishlist").add(fav);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(' added to wishlist!'),
        duration: Duration(seconds: 2),
      ),
    );

    setState(() {
      isFavorite = true;
    });
  }

  void addToCart() async {
    log("porni");
    final user = FirebaseAuth.instance.currentUser;
    // if (user == null) {
    //   return;
    // }
    log("hii mee");
    log("${widget.product}");
    Map<String, dynamic> data = {
      "image": widget.product["imageUrl"],
      "product": widget.product["type"],
      "info": widget.product["Info"],
      "quatity": 1,
      "price": widget.product["price"]
    };

    FirebaseFirestore.instance.collection('cart').add(data);

    // final cartRef = await FirebaseFirestore.instance
    //     .collection('users')
    //     .doc(user!.uid)
    //     .collection('cart');
    // log('collectionq');
    // final cartItem = CartItem(
    //   image: widget.product['image'],
    //   productName: widget.product['productName'],
    //   quantity: 1,
    //   Info: widget.product['Info'],
    //   price: widget.product['price'],
    // );
    // log("hello");

    // await cartRef.add(cartItem.toMap());
    // log("eorrr");

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('${widget.product["name"]} added to cart!'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          "Face wash",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(237, 237, 237, 1),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(90, 124, 118, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 40,
                right: 40,
                top: 20,
                bottom: 10,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        height: 300,
                        width: 300,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),

                          // color: Colors.amber,
                        ),
                        child: Image.asset(widget.product["imageUrl"],
                            fit: BoxFit.cover)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: [
                  Text(
                    widget.product['type']!,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 8.0),
            //   child: Text(
            //     widget.product['name']!,
            //     style: const TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 12,
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                widget.product['Info']!,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              // width: 10,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      widget.product['price']!,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        //color: Color.fromARGB(255, 90, 89, 89),
                      ),
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isFavorite = !isFavorite;
                        if (isFavorite) {
                          log("Hello");
                          addToWishlist();
                        }
                      });
                    },
                    child: !isFavorite
                        ? const Icon(Icons.favorite_border_outlined,
                            color: Colors.black)
                        : const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                widget.product['Text']!,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 90, 89, 89),
                ),
              ),
            ),

            const Spacer(),

            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    log("add to cart");
                    addToCart();
                    setState(() {});
                  },
                  child: Container(
                    height: 60,
                    width: 190,
                    color: Colors.green,
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 30,
                        top: 15,
                      ),
                      child: Text(
                        "Add to cart",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500 // text size
                            // color: Colors.white, // text color
                            ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return OrderSummary(product: widget.product);
                    }));
                  },
                  child: Container(
                    height: 60,
                    width: 190,
                    //decoration: BoxDecoration(

                    // ),
                    color: const Color.fromARGB(255, 208, 233, 47),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 50,
                        top: 15,
                      ),
                      child: Text(
                        "Buy Now",
                        style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500 // text size
                            // color: Colors.white, // text color
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
