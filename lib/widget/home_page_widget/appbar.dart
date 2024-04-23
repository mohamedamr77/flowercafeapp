import 'package:flutter/material.dart';

import '../../cool/imagecore.dart';

AppBar abbBarHomePage=AppBar(
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
);