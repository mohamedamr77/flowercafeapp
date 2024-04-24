import 'package:cafeflower/cool/colorcore.dart';
import 'package:cafeflower/cool/imagecore.dart';
import 'package:cafeflower/model_varibale/Milkshake_list.dart';
import 'package:flutter/material.dart';
import '../home_page_widget/search.dart';
import 'milkshake_item.dart';
class CustomMilkshakeBody extends StatelessWidget {
  const CustomMilkshakeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          CustomSearch(),
          SizedBox(height: 20,),
          Container(
            height: 1,
            width: double.infinity,
            color: ColorApp.binklight_color,
          ),
          SizedBox(
            height: 35,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(height: 14,),
              itemBuilder: (context, index) => MilkshakeItem(index: index,),
              itemCount: milkshakelist.length,
            ),
          )

        ],
      ),
    );
  }
}
