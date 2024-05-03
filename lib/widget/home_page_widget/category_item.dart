import 'package:cafeflower/cool/textcore.dart';
import 'package:cafeflower/model_varibale/category/discover_category/list_discover_category.dart';
import 'package:cafeflower/widget/category_details_widget/category_details_body.dart';
import 'package:flutter/material.dart';
import '../../cool/colorcore.dart';
import '../../model_varibale/category/categoey_details_list.dart';
class CategoryItem extends StatefulWidget{

  int index;

  CategoryItem({super.key,required this.index});

  @override
  State<CategoryItem> createState() => _CategoryItemState();
}

class _CategoryItemState extends State<CategoryItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>
        widget.index==0? CategoryDetailsBody(
            models:categoryDetails.where((title) =>title.title==AppText.fruits_Text,).toList(),
            titleAppbar: AppText.fruits_Text
        )
            :
        widget.index==1? CategoryDetailsBody(
            models:categoryDetails.where((title) =>title.title==AppText.vegetables_Text, ).toList(),
            titleAppbar: AppText.vegetables_Text
        )
            :
        widget.index==2? CategoryDetailsBody(
            models:categoryDetails.where((title) =>title.title==AppText.hotDriknks_text ).toList(),
            titleAppbar: AppText.hotDriknks_text
        )
            :
        CategoryDetailsBody(
            models:categoryDetails.where((title) =>title.title==AppText.food_Text, ).toList(),
            titleAppbar: AppText.food_Text,
        ),
        )
        );
      },
      child: Column(
        children: [
          CircleAvatar(
            radius: 35,
            backgroundColor: Colors.transparent, // Make the background transparent
            backgroundImage: null, // Clear any existing background image
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xffFBE7E4).withOpacity(0.6),
                    Color(0xffFBE7E4).withOpacity(0),
                  ], // Your gradient colors
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Center(
                child: Image(
                  image: AssetImage(discoverCategoryList[widget.index].image),
                ),
              ),
            ),
          ),
          Text(discoverCategoryList[widget.index].name,
            style: TextStyle(
              color: ColorApp.basic_color,
              fontSize: 13,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}