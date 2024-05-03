import 'package:cafeflower/cool/imagecore.dart';
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
          width: MediaQuery.of(context).size.width*0.2,
          height: MediaQuery.of(context).size.height*0.02,
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
              SizedBox(width: MediaQuery.of(context).size.width*0.01,),
              Image(image: AssetImage(ImageApp.arrowRight_Image)),
            ],
          ),
        ),
      ) ,
    );
  }

}