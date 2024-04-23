import 'package:flutter/material.dart';
import '../widget/drawer_widget/navbar.dart';
import '../widget/home_page_widget/appbar.dart';
import '../widget/home_page_widget/home_page_body.dart';

class HomePageScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: abbBarHomePage,
      drawer: NavBar(),
      body: CustomHomePageBody(),
    );
  }

}