class ItemModel{
  final String image;
  final String nameProduct;
  final String describtion;
  final double price;
    int count;
  ItemModel({
    required this.image,
    required this.nameProduct,
    required this.describtion,
    required this.price,
         this.count=0,
  });
}

