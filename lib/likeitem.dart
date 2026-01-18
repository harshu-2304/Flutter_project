class Likeitem {
  final String image;
  final String productName;
  final String Info;
  final String price;
  final String id;

  Likeitem(
      {required this.image,
      required this.Info,
      required this.productName,
      required this.price,
      required this.id});

  Map<String, dynamic> myMap() {
    return {
      'image': image,
      'productName': productName,
      'Info': Info,
      'price': price,
      'id': id
    };
  }
}
