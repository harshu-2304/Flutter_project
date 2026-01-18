import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_x_app/ankita/details_screen.dart';
//import 'package:skincare_app/FacewashM.dart';

class ProductsScreen extends StatefulWidget {
  final String type;
  final Map productMap;
  const ProductsScreen(
      {super.key, required this.type, required this.productMap});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  bool isFemale = true;
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(233, 227, 203, 1),
      appBar: AppBar(
        title: Text(
          // widget.productMap["Male"][0]["name"],
          widget.type,
          style: const TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w700,
            color: Color.fromRGBO(250, 250, 250, 1),
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(90, 124, 118, 1),
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back_ios_new, color: Colors.white)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isFemale = true;
                    });
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) {
                    //   return FacewashM();
                    // }));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                  ),
                  child: const Text('Female',
                      style: TextStyle(
                        color: Color.fromRGBO(90, 124, 118, 1),
                      )),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      isFemale = false;
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                  ),
                  child: const Text('Male',
                      style: TextStyle(
                        color: Color.fromRGBO(90, 124, 118, 1),
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(8),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 0.7,
              ),
              itemCount: isFemale
                  ? widget.productMap["Female"].length
                  : widget.productMap["Male"].length,
              itemBuilder: (context, index) {
                final product = isFemale
                    ? widget.productMap["Female"][index]
                    : widget.productMap["Male"][index];
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return DetailsScreen(product: product);
                    }));
                  },
                  child: Card(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                          child: Image.asset(
                            product['imageUrl'],
                            height: 160,
                            width: double.infinity,
                            fit: BoxFit.contain,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            product['type']!,
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            product['name']!,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            product['price']!,
                            style: const TextStyle(
                              color: Color.fromRGBO(90, 124, 118, 1),
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
