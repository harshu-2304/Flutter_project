import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:super_x_app/ankita/address_model.dart';
import 'package:super_x_app/ankita/order_summary.dart';

class AddressScreen extends StatefulWidget {
//final Map orderMap;
  final AddressModel? addressModel;
  final addressdata;
  const AddressScreen({super.key, this.addressModel, this.addressdata});
  //final Map product;

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  void initState() {
    log("ADDED DATA := ${widget.addressdata}");
    super.initState();
  }

  List Data = [];
//Controllers for the delivery address fields
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _districtController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _addressController.dispose();
    _districtController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void submit([AddressModel? modelObj]) {
    if (_nameController.text.trim().isNotEmpty &&
        _addressController.text.trim().isNotEmpty &&
        _districtController.text.trim().isNotEmpty &&
        _phoneController.text.trim().isNotEmpty) ;
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Summary"),
      ),
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 5,
              right: 5,
            ),
            child: Text(
              "Enter Delivery Details:",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: "Full Name",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              controller: _addressController,
              decoration: const InputDecoration(
                labelText: "Address",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              controller: _districtController,
              decoration: const InputDecoration(
                labelText: "District/Pin Code",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                labelText: "Phone Number",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),

          GestureDetector(
            onTap: () async {
              Map<String, dynamic> adreessData = {
                "name": _nameController.text,
                "adress": _addressController.text,
                "pincode": _districtController.text,
                "phoneNo": _phoneController.text
              };

              await FirebaseFirestore.instance
                  .collection("adressDiscount")
                  .add(adreessData);

              Data.add(AddressModel(
                  name: _nameController.text,
                  address: _addressController.text,
                  pinCode: _districtController.text,
                  phoneNo: _phoneController.text));
              submit();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OrderSummary(
                            productData: Data,
                            product: widget.addressdata,
                          )));
            },
            child: Container(
              height: 50,
              width: 150,
              child: Center(
                child: Text(
                  "Submit",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 208, 233, 47),
              ),
            ),
          ),

          // Text(widget.addressdata.);
        ],
      ),
    );
  }
}











// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:super_x_app/ankita/address_model.dart';

// class AddressScreen extends StatefulWidget {
// //final Map orderMap;
//   final AddressModel addressModel;
//   const AddressScreen({super.key, required this.addressModel});
//   //final Map product;

//   @override
//   State<AddressScreen> createState() => _AddressScreenState();
// }

// class _AddressScreenState extends State<AddressScreen> {
// //Controllers for the delivery address fields
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _addressController = TextEditingController();
//   final TextEditingController _districtController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();

//   @override
//   void dispose() {
//     _nameController.dispose();
//     _addressController.dispose();
//     _districtController.dispose();
//     _phoneController.dispose();
//     super.dispose();
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Order Summary"),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           const Padding(
//             padding: EdgeInsets.only(
//               top: 20,
//               left: 5,
//               right: 5,
//             ),
//             child: Text(
//               "Enter Delivery Details:",
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ),
//           const SizedBox(height: 30),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: TextFormField(
//               controller: _nameController,
//               decoration: const InputDecoration(
//                 labelText: "Full Name",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: TextFormField(
//               controller: _addressController,
//               decoration: const InputDecoration(
//                 labelText: "Address",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: TextFormField(
//               controller: _districtController,
//               decoration: const InputDecoration(
//                 labelText: "District/Pin Code",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//           const SizedBox(height: 10),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: TextFormField(
//               controller: _phoneController,
//               keyboardType: TextInputType.phone,
//               decoration: const InputDecoration(
//                 labelText: "Phone Number",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 40,
//           ),
//           Container(
//             height: 50,
//             width: 150,
//             child: Center(
//               child: const Text(
//                 "Submit",
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.w500,
//                 ),
//               ),
//             ),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(10),
//               color: const Color.fromARGB(255, 208, 233, 47),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
