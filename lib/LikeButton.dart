import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:super_x_app/ScreenOne.dart';
import 'package:super_x_app/likeitem.dart';
import 'package:super_x_app/navBar.dart';

class MyWishlist extends StatefulWidget {
  @override
  _MyWishlistState createState() => _MyWishlistState();
}

class _MyWishlistState extends State<MyWishlist> {
  //List<Map<String, dynamic>> wishlistItems = [];
  List<Likeitem> list = [];

  // Future<void> fetchWishlistData() async {
  //   try {
  //     final QuerySnapshot querySnapshot = await FirebaseFirestore.instance
  //         .collection('mywishlist')
  //         .get(); // Adjust the query if needed

  //     _wishlistItems = querySnapshot.docs
  //         .map((doc) => doc.data() as Map<String, dynamic>)
  //         .toList();
  //     setState(() {});
  //   } catch (error) {
  //     print('Error fetching data: $error');
  //   }
  // }
  Future<void> fetchWishlistData() async {
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('mywishlist').get();
      print("data get");
      list = querySnapshot.docs.map((doc) {
        return Likeitem(
          id: doc.id,
          image: doc['image'],
          Info: doc['info'],
          productName: doc['product'],
          price: doc['price'],
        );
      }).toList();
      setState(() {});
    } catch (error) {
      print('Error fetching data: $error');
    }
  }

  print(list) {}
  @override
  void initState() {
    super.initState();
    fetchWishlistData();
  }

  // Future<void> deleteProduct(String documentId) async {
  //   try {
  //     await FirebaseFirestore.instance
  //         .collection('mywishlist')
  //         .doc(documentId)
  //         .delete();
  //     print('Product deleted successfully');
  //     // Update the UI to reflect the change (e.g., remove the item from the list)
  //   } catch (error) {
  //     print('Error deleting product: $error');
  //     // Handle the error, e.g., show an error message to the user
  //   }
  // }
  void _deleteProduct(Likeitem item) async {
    await FirebaseFirestore.instance
        .collection('mywishlist')
        .doc(item.id)
        .delete();
    setState(() {
      list.remove(item);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(90, 124, 118, 1),
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios_new_sharp)),
        title: Text(
          'My Wishlist',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            final item = list[index];
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(255, 229, 229, 229),
                  ),
                  child: Row(
                    children: [
                      ClipRRect(
                        clipBehavior: Clip.antiAlias,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          height: 150,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              item.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  // Text(item["name"]),
                                  Text(
                                    item.productName,
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  // Text(item["price"]),
                                  Text(item.price),
                                  Spacer(),
                                  GestureDetector(
                                    onTap: () {
                                      _deleteProduct(item);
                                      // deleteProduct(_wishlistItems[index]['id']);
                                    },
                                    child: const Icon(
                                      Icons.delete,
                                      color: Color.fromRGBO(90, 124, 118, 1),
                                    ),
                                  ),
                                ],
                              ),
                              // Text(item["Info"]),
                              Text(item.Info)
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            );
          }),
    );
  }
}
