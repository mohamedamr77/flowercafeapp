import 'package:cafeflower/ui/splach_screen.dart';
import 'package:cafeflower/widget/cart_widget/cart_Widget_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'widget/product_details_widget/product_details_body.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

// HomePageScreen()