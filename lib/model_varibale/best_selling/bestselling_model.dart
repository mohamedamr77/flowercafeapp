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
    this.flavor="null",
   required this.price,
   this.fav=false,
 }
     );

}