import 'package:flutter/cupertino.dart';
import '../../model_varibale/category/discover_category/list_discover_category.dart';
import 'category_item.dart';

class CustomListViewCategory extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width*0.241,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryItem(
          index: index,
        ),
        itemCount: discoverCategoryList.length, separatorBuilder: (BuildContext context, int index) => SizedBox(width: MediaQuery.of(context).size.width*0.041,),
      ),
    );
  }
}