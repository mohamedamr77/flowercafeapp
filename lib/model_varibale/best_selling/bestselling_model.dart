class BestSellinModel{
 final String image;
 final String nameProduct;
 final String flavor;
 final double price;
   bool  fav;
 BestSellinModel(
 {
   required this.image,
   required this.nameProduct,
   required this.flavor,
   required this.price,
   this.fav=false,
 }
     );

}