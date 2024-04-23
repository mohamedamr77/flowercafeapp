import 'package:cafeflower/model_varibale/category/list_category_item.dart';
import 'package:flutter/material.dart';

import '../../cool/colorcore.dart';
class CategoryItem extends StatelessWidget{

  int index;

  CategoryItem({super.key,required this.index});
  @override
  Widget build(BuildContext context) {
    return Column(
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
                image: AssetImage(categoryList[index].image),
              ),
            ),
          ),
        ),
        Text(categoryList[index].name,
          style: TextStyle(
            color: ColorApp.basic_color,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }

}