import 'package:flutter/cupertino.dart';
import '../../model_varibale/category/list_category_item.dart';
import 'category_item.dart';

class CustomListViewCategory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 88,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryItem(
          index: index,
        ),
        itemCount: categoryList.length, separatorBuilder: (BuildContext context, int index) => SizedBox(width: 19,),
      ),
    );
  }

}