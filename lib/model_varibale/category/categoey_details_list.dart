import 'package:cafeflower/cool/textcore.dart';
import '../../cool/imagecore.dart';
import 'category_details_model.dart';
import 'item_model.dart';

List<CategoryDetailsModel> categoryDetails=[
  CategoryDetailsModel(
      title: "Fruits",
      items: [
        ItemModel(
          image: "assets/images/supermarket_images/fruits/Papaya.png",
          nameProduct: "Papaya",
          describtion: AppText.describtionText,
          price: 45,
        ),
        ItemModel(
          image: "assets/images/supermarket_images/fruits/Type=Fruits, Icon=Banana.png",
          nameProduct: "Banana",
          describtion: AppText.describtionText,
          price: 20,
        ),
        ItemModel(
          image: "assets/images/supermarket_images/fruits/Type=Fruits, Icon=Grape.png",
          nameProduct: "Grape",
          describtion: AppText.describtionText,
          price: 35,
        ),
        ItemModel(
          image: "assets/images/supermarket_images/fruits/Type=Fruits, Icon=Lemon.png",
          nameProduct: "Lemon",
          describtion: AppText.describtionText,
          price: 10,
        ),
        ItemModel(
          image: "assets/images/supermarket_images/fruits/Type=Fruits, Icon=Mango.png",
          nameProduct: "Mango",
          describtion: AppText.describtionText,
          price: 40,
        ),
        ItemModel(
          image: "assets/images/supermarket_images/fruits/Type=Fruits, Icon=Orange.png",
          nameProduct: "Orange",
          describtion: AppText.describtionText,
          price: 20,
        ),
        ItemModel(
          image:"assets/images/supermarket_images/fruits/Type=Fruits, Icon=Pear.png",
          nameProduct: "Pear",
          describtion: AppText.describtionText,
          price: 25,
        ),
        ItemModel(
          image:"assets/images/supermarket_images/fruits/Type=Fruits, Icon=Pineapple.png",
          nameProduct: "Pineapple",
          describtion: AppText.describtionText,
          price: 30,
        ),
        ItemModel(
          image:"assets/images/supermarket_images/fruits/Type=Fruits, Icon=Watermelon.png",
          nameProduct: "Watermelon",
          describtion: AppText.describtionText,
          price: 40,
        ),
      ],
  ),
  CategoryDetailsModel(
    title: AppText.vegetables_Text,
    items: [
      ItemModel(
        image: "assets/images/supermarket_images/vegetables/Type=Vegetables, Icon=Tomato.png",
        nameProduct: "Tomato",
        describtion: AppText.describtionText,
        price: 8,
      ),
      ItemModel(
        image: "assets/images/supermarket_images/vegetables/Type=Vegetables, Icon=Beet.png",
        nameProduct: "Beet",
        describtion: AppText.describtionText,
        price: 30,
      ),
      ItemModel(
        image: "assets/images/supermarket_images/vegetables/Type=Vegetables, Icon=Broccoli.png",
        nameProduct: "Broccoli",
        describtion: AppText.describtionText,
        price: 40,
      ),
      ItemModel(
        image: "assets/images/supermarket_images/vegetables/Type=Vegetables, Icon=Carrot (1).png",
        nameProduct: "Carrot",
        describtion: AppText.describtionText,
        price: 15,
      ),
      ItemModel(
        image: "assets/images/supermarket_images/vegetables/Type=Vegetables, Icon=Chili Pepper.png",
        nameProduct: "Chili Pepper",
        describtion: AppText.describtionText,
        price: 20,
      ),
      ItemModel(
        image: "assets/images/supermarket_images/vegetables/Type=Vegetables, Icon=Corn.png",
        nameProduct: "Corn",
        describtion: AppText.describtionText,
        price: 50,
      ),
      ItemModel(
        image: "assets/images/supermarket_images/vegetables/Type=Vegetables, Icon=Eggplant.png",
        nameProduct: "Eggplant",
        describtion: AppText.describtionText,
        price: 10,
      ),
      ItemModel(
        image: "assets/images/supermarket_images/vegetables/Type=Vegetables, Icon=Garlic.png",
        nameProduct: "Garlic",
        describtion: AppText.describtionText,
        price: 100,
      ),
      // ItemModel(
      //   image: "assets/images/supermarket_images/vegetables/Type=Vegetables, Icon=Mushroom.png",
      //   nameProduct: "Mushroom",
      //   describtion: AppText.describtionText,
      //   price: 30,
      // ),


    ],
  ),

  CategoryDetailsModel(
    title: AppText.hotDriknks_text,
    items: [
      ItemModel(
        image: ImageApp.vanillaMillkshake_Image,
        nameProduct: "Vanilla Milkshake",
        describtion: AppText.describtionText,
        price: 100,
      ),
      ItemModel(
        image: ImageApp.chocolateMilkshake_Image,
        nameProduct: "Oreo Milkshake",
        describtion: AppText.describtionText,
        price: 90,
      ),

      ItemModel(
        image: ImageApp.oreoMilkshake_Image,
        nameProduct: "Oreo Milkshake",
        describtion: AppText.describtionText,
        price: 45,
      ),
      // ItemModel(
      //   image: ImageApp.mangoMilkshake_Image,
      //   nameProduct: "Mango Milkshake",
      //   describtion:AppText.describtionText,
      //   price: 80,
      // ),
    ],
  ),
  CategoryDetailsModel(
    title: AppText.food_Text,
    items: [
      ItemModel(
        image: "assets/images/supermarket_images/food/Type=Food, Icon=Bread.png",
        nameProduct: "Bread",
        describtion: AppText.describtionText,
        price: 45,
      ),
      ItemModel(
        image: "assets/images/supermarket_images/food/Type=Food, Icon=Cake.png",
        nameProduct: "Cake",
        describtion: AppText.describtionText,
        price: 100,
      ),
      ItemModel(
        image: "assets/images/supermarket_images/food/Type=Food, Icon=Donut.png",
        nameProduct: "Donut",
        describtion: AppText.describtionText,
        price: 90,
      ),
      ItemModel(
        image: "assets/images/supermarket_images/food/Type=Food, Icon=Fried Eggs.png",
        nameProduct: "Fried Eggs",
        describtion: AppText.describtionText,
        price: 80,
      ),

      ItemModel(
        image: "assets/images/supermarket_images/food/Type=Food, Icon=Muffin.png",
        nameProduct: "Muffin",
        describtion: AppText.describtionText,
        price: 80,
      ),

      ItemModel(
        image: "assets/images/supermarket_images/food/Type=Food, Icon=Pasta.png",
        nameProduct: "Pasta",
        describtion: AppText.describtionText,
        price: 80,
      ),

      ItemModel(
        image: "assets/images/supermarket_images/food/Type=Food, Icon=Pizza.png",
        nameProduct: "Pizza",
        describtion: AppText.describtionText,
        price: 80,
      ),

      ItemModel(
        image: "assets/images/supermarket_images/food/Type=Food, Icon=Salad.png",
        nameProduct: "Salad",
        describtion: AppText.describtionText,
        price: 80,
      ),

      ItemModel(
        image: "assets/images/supermarket_images/food/Type=Food, Icon=Sandwich.png",
        nameProduct: "Sandwich",
        describtion: AppText.describtionText,
        price: 80,
      ),

      ItemModel(
        image: "assets/images/supermarket_images/food/Type=Food, Icon=Soup.png",
        nameProduct: "Soup",
        describtion: AppText.describtionText,
        price: 80,
      ),

      ItemModel(
        image: "assets/images/supermarket_images/food/Type=Food, Icon=Sushi.png",
        nameProduct: "Sushi",
        describtion: AppText.describtionText,
        price: 80,
      ),

      ItemModel(
        image: "assets/images/supermarket_images/food/Type=Food, Icon=Fried Eggs.png",
        nameProduct: "Fried Eggs",
        describtion: AppText.describtionText,
        price: 80,
      ),

    ],
  ),


];
