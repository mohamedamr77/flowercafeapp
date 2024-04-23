import 'package:cafeflower/cool/imagecore.dart';
import 'package:cafeflower/widget/home_page_widget/banner_widget.dart';
import 'package:cafeflower/widget/home_page_widget/search.dart';
import 'package:flutter/material.dart';
import 'gridview_bestselling.dart';
import 'list_tile_custom.dart';
import 'listview_category.dart';
class CustomHomePageBody extends StatelessWidget {
  const CustomHomePageBody({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
          const  CustomBanner(image: ImageApp.homePage_flower_Image, text: "Choose What Suits Your Test"),
         const   SizedBox(height: 5,),
            CustomSearch(),
            CustomListtile(text: 'Discover by category',),
            CustomListViewCategory(),
          const  SizedBox(height: 5,),
            CustomListtile(text: 'Best selling',),
            CustomGridView(),
          ],
        ),
      ),
    );
  }
}