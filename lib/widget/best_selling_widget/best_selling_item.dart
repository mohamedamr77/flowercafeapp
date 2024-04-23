import 'package:flutter/material.dart';
import '../../cool/colorcore.dart';
import '../../model_varibale/list_best_selling.dart';

class CustomBestSellingItem extends StatelessWidget {
  int index;
   CustomBestSellingItem({super.key,required this.index});
  @override
  Widget build(BuildContext context) {
    return   Stack(
      children: [
        Container(
          height: 167,
          width: 153,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xffF7CCC6).withOpacity(0.25),
                    ColorApp.white_color
                  ],
                  begin:Alignment.topCenter,
                  end:Alignment.bottomCenter,
                  stops: [0.55,0.45]
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(
                color: ColorApp.border_container_bestselling_color,
              )
          ),
        ),
        Positioned(
          left: 8,
          right:28 ,
          top:9 ,
          bottom: 81,
          child: Image(
            height: 78,
            width: 117,
            image: AssetImage(bestSellingList[index].image),
          ),
        ),
        Positioned(
          right: 3,
          top: 4,
          child: CircleAvatar(
            backgroundColor: ColorApp.white_color ,
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon:
                Icon(Icons.favorite_border, color :ColorApp.basic_color),

              ),
            ),
          ),
        ),
        Positioned(
          top: 100,
          bottom: 52,
          left: 8,
          child: Text(bestSellingList[index].nameProduct,
            style: TextStyle(
              color: ColorApp.basic_color,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Positioned(
          top: 118,
          bottom: 34,
          left: 8,
          child: Text("Flavor : ${bestSellingList[index].flavor}",
            style: TextStyle(
              color: ColorApp.flavor_color,
              fontSize: 13,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Positioned(
          top: 142,
          bottom: 10,
          left: 12,
          child: Text("${bestSellingList[index].price} LE",
            style: TextStyle(
              color: ColorApp.basic_color,
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
