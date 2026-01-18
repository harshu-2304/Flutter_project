class CartItem {
  final String image;
  final String productName;
  dynamic quantity;
  final String Info;
  String price;
  final String id;

  CartItem(
      {required this.image,
      required this.Info,
      required this.productName,
      required this.quantity,
      required this.price,
      required this.id});

  // CartItem copyWith({
  //   String? id,
  //   String? image,
  //   String? info,
  //   String? productName,
  //   int? quantity,
  //   String? price,
  // }) {
  //   return CartItem(
  //     id: id ?? this.id,
  //     image: image ?? this.image,
  //     Info: info ?? this.Info,
  //     productName: productName ?? this.productName,
  //     quantity: quantity ?? this.quantity,
  //     price: price ?? this.price,
  //   );
  // }

  Map<String, dynamic> toMap() {
    return {
      'imageUrl': image,
      'productName': productName,
      'Info': Info,
      'quantity': quantity,
      'price': price,
      'id': id
    };
  }
}
