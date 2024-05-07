import 'package:flutter/material.dart';
import '../cool/imagecore.dart';
import '../widget/drawer_widget/navbar.dart';
import '../widget/home_page_widget/home_page_body.dart';

class HomePageScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Image(
          image: AssetImage(ImageApp.appBar_title_Image),
          height: 43,
          width: 80,
        ),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(
              Icons.add_shopping_cart_rounded
          ))
        ],
      ),
      drawer: NavBar(),
      body: CustomHomePageBody(),
    );
  }

}