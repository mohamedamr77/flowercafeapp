import 'package:cafeflower/cool/imagecore.dart';
import 'package:cafeflower/cool/textcore.dart';
import 'package:cafeflower/model_varibale/best_selling/list_best_selling.dart';
import 'package:cafeflower/widget/home_page_widget/banner_widget.dart';
import 'package:cafeflower/widget/home_page_widget/search.dart';
import 'package:flutter/material.dart';
import '../../ui/bestselling_screen.dart';
import '../../ui/milkshake_screen.dart';
import '../best_selling_widget/best_selling_item.dart';
import '../best_selling_widget/gridview_bestselling.dart';
import 'list_tile_custom.dart';
import 'listview_category.dart';
class CustomHomePageBody extends StatelessWidget {
  const CustomHomePageBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(12),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: const  CustomBanner(image: ImageApp.homePage_flower_Image, text: AppText.chooseSuitsText)),
          SliverToBoxAdapter(child: const   SizedBox(height: 5,)),
          SliverToBoxAdapter(child: CustomSearch()),
          SliverToBoxAdapter(
              child: CustomListtile(
                text: AppText.discoverCategoryText,
                onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context) => MilkshakeScreen(),)),
          )),
          SliverToBoxAdapter(child: CustomListViewCategory()),
          SliverToBoxAdapter(child: const  SizedBox(height: 5,)),
          SliverToBoxAdapter(
            child: CustomListtile(
                text: AppText.bestSellingText,
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  BestSellingScreen()));
                }
            ),
          ),
           SliverGrid.builder(
       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of items per row
        crossAxisSpacing: 8,
         mainAxisSpacing: 10,// Spacing between items horizontally
        childAspectRatio: 0.98, // Aspect ratio of items (square in this case)
      ),
       itemBuilder: (context, index) => CustomBestSellingItem(index: index),
             itemCount: bestSellingList.length,
    ),
    ]
    ),
    );
  }
}