import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:super_x_app/ankita/details_screen.dart';
import 'package:super_x_app/ankita/order_summary.dart';
import 'package:super_x_app/cartitem.dart';
import 'package:super_x_app/navBar.dart';

class CartButton extends StatefulWidget {
  const CartButton({
    super.key,
  });

  @override
  State<CartButton> createState() => _LikebuttonState();
}

class _LikebuttonState extends State<CartButton> {
  List<CartItem> dataList = [];

  // log(doc) {}

  Future<void> getFireStoreData() async {
    try {
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('cart').get();
      dataList = querySnapshot.docs.map((doc) {
        return CartItem(
          id: doc.id,
          image: doc['image'],
          Info: doc['info'],
          productName: doc['product'],
          quantity: doc['quatity'],
          price: doc['price'],
        );
      }).toList();
      setState(() {});
    } catch (error) {
      print('Error fetching data: $error');
    }

    print(dataList);
  }

  // void calculateTotalAmount() {
  //   totalAmount =
  //       dataList.fold(0.0, (sum, item) => sum + (item.price * item.quantity));
  //   setState(() {
  //     log("PRICE DATA :- ${totalAmount}");
  //   });
  // }

  // void _updateQuantity(CartItem item, int newQuantity) async {
  //   await FirebaseFirestore.instance
  //       .collection('cart')
  //       .doc(item.id)
  //       .update({'quatity': newQuantity, 'totalAmount': totalAmount});

  //   item.quantity = newQuantity;
  //   // calculateTotalAmount();
  //   setState(() {});
  // }

  void _deleteProduct(CartItem item) async {
    await FirebaseFirestore.instance.collection('cart').doc(item.id).delete();
    setState(() {
      dataList.remove(item);
    });
  }

  @override
  void initState() {
    super.initState();
    getFireStoreData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(90, 124, 118, 1),
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return const Navbar();
              }));
            },
            child: const Icon(Icons.arrow_back_ios_new_sharp)),
        title: const Text(
          'My Cart',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: dataList.isEmpty
          ? const Center(
              child: Text(
                  'No data found')) // Display a message if the list is empty
          : ListView.builder(
              itemCount: dataList.length,
              itemBuilder: (context, index) {
                CartItem item = dataList[index];

                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 229, 229, 229),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return OrderSummary(
                                product: item.toMap(),
                              );
                            }));
                          },
                          child: ListTile(
                              leading: Container(
                                child: Image.asset(
                                  item.image,
                                  //fit: BoxFit.fill,
                                ),
                              ),
                              title: Text(item.productName,
                                  style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                              subtitle: Text(
                                  'Info: ${item.Info}\nQuantity: ${item.quantity}\nPrice:${item.price}'),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.delete),
                                    onPressed: () => _deleteProduct(item),
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.remove),
                                    onPressed: () {
                                      // if (item.quantity > 1) {
                                      //   _updateQuantity(
                                      //       item, item.quantity - 1);
                                      //   totalAmount =
                                      //       item.price * (item.quantity - 1);
                                      // }
                                    },
                                  ),
                                  Text(item.quantity.toString()),
                                  IconButton(
                                    icon: const Icon(Icons.add),
                                    onPressed: () {
                                      setState(() {});
                                      print("adding data");

                                      // _updateQuantity(item, item.quantity + 1);
                                      // totalAmount =
                                      //     item.price * (item.quantity + 1);
                                      // setState(() {});
                                    },
                                  ),
                                ],
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                );
              },
            ),
    );
  }
}
