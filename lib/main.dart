import 'package:cafeflower/ui/splach_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'ui/on_boarding_screen.dart';

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