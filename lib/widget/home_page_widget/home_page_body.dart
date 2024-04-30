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
      padding:  EdgeInsets.symmetric(
        horizontal:MediaQuery.of(context).size.width*0.03 ,
        vertical:MediaQuery.of(context).size.height*0.03  ,
      ),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: const  CustomBanner(image: ImageApp.homePage_flower_Image, text: AppText.chooseSuitsText)),
          SliverToBoxAdapter(child: const   SizedBox(height: 9,)),
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
           SliverToBoxAdapter(
             child: SizedBox(
               height: 170,
               child: ListView.separated(
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (context, index) => CustomBestSellingItem(index: index),
                 separatorBuilder: (BuildContext context, int index) {
                 return SizedBox(
                     width: 10,
                 );
                 },
                 itemCount: bestSellingList.length,),
             ),
           )
    ]
    ),
    );
  }
}


/*
itemBuilder: (context, index) => CustomBestSellingItem(index: index),
             itemCount: bestSellingList.length,
 */