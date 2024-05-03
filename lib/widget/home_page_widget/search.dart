import 'package:cafeflower/cool/imagecore.dart';
import 'package:cafeflower/cool/textcore.dart';
import 'package:flutter/material.dart';

import '../../cool/colorcore.dart';

class CustomSearch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: AppText.seacrhformFieldText,
              hintStyle: TextStyle(
                color: Color(0xff3C312F4D).withOpacity(0.6),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: ColorApp.basic_color, width: 0.5),
              ),

            ),

          ),
        ),
        SizedBox(width: MediaQuery.of(context).size.width*0.03,),
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0),
            bottomRight:Radius.circular(15),
            topRight: Radius.circular(15),
            topLeft: Radius.circular(15),
          ),
          child: CircleAvatar(
            backgroundColor: ColorApp.binklight_color,
            child: Center(
              child:Image(
                image: AssetImage(ImageApp.search_Image),
              ),
            ) ,
          ),
        ),
      ],
    );
  }

}