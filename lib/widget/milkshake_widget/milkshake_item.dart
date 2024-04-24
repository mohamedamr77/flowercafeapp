import 'package:cafeflower/model_varibale/Milkshake_list.dart';
import 'package:flutter/cupertino.dart';

import '../../cool/colorcore.dart';
import '../../cool/imagecore.dart';

class MilkshakeItem extends StatelessWidget{
  int index;

  MilkshakeItem({super.key,required this.index});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 329,
          height: 118,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  colors: [
                    Color(0xffF7CEC8),
                    Color(0xffF7CEC8).withOpacity(0),
                  ]
              ),
              border: Border.all(
                color: Color(0xffF7CCC6),
                width: 0.6,
              )
          ),
        ),
        Positioned(
            left: 214,
            right:13 ,
            bottom: 12,
            child: Image(
              image: AssetImage(milkshakelist[index].image),
            )),
        Positioned(
          left: 16,
          right:209 ,
          top: 16,
          bottom: 81,
          child: FittedBox(
            child: Text(milkshakelist[index].name_prpoduct,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontFamily: "Pangolin",
                color: ColorApp.basic_color,
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        Positioned(
          left: 14,
          right:137 ,
          top: 41,
          bottom: 38,
          child: FittedBox(
            child: SizedBox(
              width:178 ,
              child: Text(milkshakelist[index].describtion,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: ColorApp.basic_color.withOpacity(0.65),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 25,
          right:257 ,
          top: 89,
          bottom: 8,
          child: FittedBox(
            child: SizedBox(
              child: Text("${milkshakelist[index].price} LE",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: ColorApp.basic_color.withOpacity(0.65),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),

      ],
    );
  }

}