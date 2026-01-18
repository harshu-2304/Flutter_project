// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:super_x_app/ScreenOne.dart';

// class PaymentScreen extends StatefulWidget {
//   const PaymentScreen({super.key, required this.product});
//   final Map product;

//   @override
//   State<PaymentScreen> createState() => _PaymentScreenState();
// }

// class _PaymentScreenState extends State<PaymentScreen>{

// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Payments"),
//       ),
// //////////////////////////////////////////////////////////////////////
// body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Select Payment Method",
//                 style: GoogleFonts.poppins(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w600,
//                 ),
//               ),
//               const SizedBox(height: 10),
//               _paymentMethodItem(context, "assets/images/visa.png"),
//               _paymentMethodItem(context, "assets/images/gpay.png"),
//               _paymentMethodItem(context, "assets/images/phonepay.png"),
//               const SizedBox(height: 20), // Replace Spacer with a fixed height to prevent layout issues
//               Center(
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color.fromARGB(255, 208, 233, 47),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
//                   ),
//                   onPressed: () {
//                     Navigator.pushReplacement(
//                       context,
//                       MaterialPageRoute(builder: (context) =>   ScreenOne()),
//                     );
//                     // Add your payment processing code here
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                         content: Text(
//                           'Payment processed successfully!',
//                           style: GoogleFonts.poppins(),
//                         ),
//                       ),
//                     );
//                   },
//                   child: Text(
//                     "Pay Now",
//                     style: TextStyle(
//                       fontSize:20 ,
//                       color: Colors.black,
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//    ),
// ),

// ////////////////////////////////////////////////////////////////////////////////
//     );
// }
// ///////////////////////////////////////////////////////////////////////////
// Widget _paymentMethodItem(BuildContext context, String imagePath) {
//     return GestureDetector(
//       onTap: () {},
//       child: Container(
//         margin: const EdgeInsets.symmetric(vertical: 10),
//         padding: const EdgeInsets.all(10),
//         decoration: BoxDecoration(
//           color: Colors.grey[200],
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Row(
//           children: [
//             Image.asset(
//               imagePath,
//               width: 40, // Set a fixed width
//               height: 40, // Set a fixed height
//               fit: BoxFit.cover,
//             ),
//             const SizedBox(width: 270),

//             const Icon(Icons.check_circle, color: Colors.green),
//           ],
//         ),
//      ),
// );
// }

// ////////////////////////////////////////////////////////////////////////
// }

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_x_app/ScreenOne.dart';
import 'package:super_x_app/navBar.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key, required this.product});
  final Map product;

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  int _selectedPaymentMethod = -1;
  bool _isCorrect = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payments"),
      ),
//////////////////////////////////////////////////////////////////////
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Payment Method",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                  onTap: () {
                    const Icon(
                      Icons.check_box_rounded,
                      color: Colors.green,
                    );
                    setState(() {});
                    // _isCorrect=true;
                  },
                  child:
                      _paymentMethodItem(context, "assets/images/visa.png", 0)),
              _paymentMethodItem(context, "assets/images/gpay.png", 1),
              _paymentMethodItem(context, "assets/images/phonepay.png", 2),
              const SizedBox(
                  height:
                      20), // Replace Spacer with a fixed height to prevent layout issues
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _selectedPaymentMethod != -1
                        ? const Color.fromARGB(255, 208, 233, 47)
                        : Colors.grey,

                    // backgroundColor: const Color.fromARGB(255, 208, 233, 47),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 60, vertical: 15),
                  ),
                  onPressed: _selectedPaymentMethod != -1
                      ? () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Navbar(),
                            ),
                          );
                          showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: const Text('Order Placed'),
                                content: const Text(
                                    'Are you sure you want to proceed?'),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pop(); // Closes the dialog
                                    },
                                    child: const Text('Cancel'),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      // Perform some action
                                      Navigator.of(context)
                                          .pop(); // Closes the dialog after action
                                    },
                                    child: const Text('Confirm'),
                                  ),
                                ],
                              );
                            },
                          );
                          // Add your payment processing code here
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                'Payment processed successfully!',
                                style: GoogleFonts.poppins(),
                              ),
                            ),
                          );
                        }
                      : null,
                  child: const Text(
                    "Pay Now",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

////////////////////////////////////////////////////////////////////////////////
    );
  }

///////////////////////////////////////////////////////////////////////////
  Widget _paymentMethodItem(BuildContext context, String imagePath, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedPaymentMethod = index;
        });
        // const Icon(Icons.check_box_rounded,
        //    color: Colors.green
        //ssss654     );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          // color: Color.fromARGB(255, 211, 210, 210),
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12, // Soft shadow color
              offset: Offset(0, 4), // Shadow position
              blurRadius: 8, // Blur effect
              spreadRadius: 1, // Spread effect
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              imagePath,
              width: 40, // Set a fixed width
              height: 40, // Set a fixed height
              fit: BoxFit.cover,
            ),
            const Spacer(),
            Icon(
              Icons.check_box_rounded,

              color:
                  _selectedPaymentMethod == index ? Colors.green : Colors.black,
              //color: Colors.green
            ),
          ],
        ),
      ),
    );
  }

////////////////////////////////////////////////////////////////////////
}
