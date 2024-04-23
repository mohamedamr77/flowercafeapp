import 'package:flutter/material.dart';
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
                    Colors.white
                  ],
                  begin:Alignment.topCenter,
                  end:Alignment.bottomCenter,
                  stops: [0.55,0.45]
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(
                color: Color(0xffF7CCC6),

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
            backgroundColor: Colors.white ,
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon:
                Icon(Icons.favorite_border, color :Color(0xff3C312F)),

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
              color: Color(0xff3C312F),
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
              color: Color(0xff959595),
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
              color: Color(0xff3C312F),
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
