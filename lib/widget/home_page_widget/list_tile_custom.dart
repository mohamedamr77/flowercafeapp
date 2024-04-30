import 'package:cafeflower/cool/textcore.dart';
import 'package:flutter/material.dart';

import '../../cool/colorcore.dart';

class CustomListtile  extends StatelessWidget{
  String text;
  Function()? onTap;
  CustomListtile({super.key,required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:Text(text,
        style: TextStyle(
          color: ColorApp.basic_color,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 70,
          height: 15,
          child: Row(
            children: [
              FittedBox(
                child: Text(AppText.seeAllText,
                  style: TextStyle(
                    color: Color(0xffD1A39D),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(width: 3,),
              //Image(image: AssetImage("assets/images/Arrow---Right.png")),
            ],
          ),
        ),
      ) ,
    );
  }

}