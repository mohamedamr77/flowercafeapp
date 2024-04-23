import 'package:flutter/cupertino.dart';

import '../../model_varibale/best_selling/list_best_selling.dart';
import '../best_selling_widget/best_selling_item.dart';

class CustomGridView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 29,
        mainAxisSpacing: 10,
        childAspectRatio: 0.9,
      ) ,
      itemBuilder: (BuildContext context, int index) {
        return CustomBestSellingItem(index: index);
      },
      itemCount: bestSellingList.length,
    );
  }

}