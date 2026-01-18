import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:super_x_app/ankita/address_model.dart';
import 'package:super_x_app/ankita/address_screen.dart';
import 'package:super_x_app/ankita/payment_screen.dart';

class OrderSummary extends StatefulWidget {
  Map? product;
  List? productData;
  int quantity;

  OrderSummary({
    super.key,
    this.product,
    this.productData,
    this.quantity = 1,
  });

  @override
  State<OrderSummary> createState() => _OrderSummaryState();
}

class _OrderSummaryState extends State<OrderSummary> {
  bool _isSecondContainerVisible = true;
  List Data = [];

  @override
  void initState() {
    log("INIT STATE");
    // log("DATA ADDED ${widget.productData}");
    addressDataMethod();
    // for (int i = 0; i < widget.productData!.length; i++) {
    //   log("DATA ADDED ${widget.productData![i].name}");

    // }
    super.initState();
  }

  void addressDataMethod() async {
    QuerySnapshot response =
        await FirebaseFirestore.instance.collection("adressDiscount").get();
    for (int i = 0; i < response.docs.length; i++) {
      // log("NAME :- ${response.docs[i]['name']}");
      Data.add(AddressModel(
          name: response.docs[i]['name'],
          address: response.docs[i]['adress'],
          pinCode: response.docs[i]['phoneNo'],
          phoneNo: response.docs[i]['pincode']));
    }
    log("$Data");
    setState(() {});
  }

  // void _increaseQuantity() {
  //   setState(() {
  //     widget.quantity++;
  //   });
  // }

  // void _decreaseQuantity() {
  //   setState(() {
  //     if (widget.quantity > 1) {
  //       widget.quantity--;
  //     }
  //   });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text("Order Summary"),
      ),
      body: Column(
        children: [
          const SizedBox(height: 15),
          if (_isSecondContainerVisible)
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 5,
                right: 5,
              ),
              child: Container(
                width: 410,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 2, color: Colors.grey),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 150,
                            width: 100,
                            child: Image.asset(
                              widget.product?["imageUrl"] ?? "",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(width: 18),
                        Container(
                          width: 250,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    widget.product?['type'] ?? "",
                                    style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              Text(
                                widget.product?['Info'] ?? "",
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    widget.product?['price'] ?? "",
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  // IconButton(
                                  //   icon: const Icon(Icons.remove),
                                  //   // onPressed: _decreaseQuantity,
                                  // ),
                                  const SizedBox(width: 10),
                                  Text(
                                    widget.quantity.toString(),
                                    style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  // IconButton(
                                  //   icon: const Icon(Icons.add),
                                  //   // onPressed: _increaseQuantity,
                                  // ),
                                  const Spacer(),
                                  IconButton(
                                    icon: const Icon(Icons.delete),
                                    onPressed: () {
                                      setState(() {
                                        _isSecondContainerVisible = false;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 600,
              child: ListView.builder(
                  itemCount: Data.length,
                  itemBuilder: (BuildContext context, index) {
                    return Container(
                      height: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2)),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Text("Name:${Data[0].name}",
                              style: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w500)),
                          Text(
                            "PhoneNo:${Data[0].pinCode}",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                          Text("Address:${Data[0].address}",
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w300)),
                          Text(
                            "Pincode:${Data[0].phoneNo}",
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return AddressScreen(
                          addressdata: widget.product,
                        );
                      },
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 60,
                    width: 195,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 50,
                        top: 15,
                      ),
                      child: Text(
                        "Add Address",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        return PaymentScreen(
                          product: widget.product!,
                        );
                      },
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 208, 233, 47),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(
                        left: 50,
                        top: 15,
                      ),
                      child: Text(
                        "Continue",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
