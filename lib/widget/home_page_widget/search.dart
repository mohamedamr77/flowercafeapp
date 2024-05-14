import 'package:cafeflower/widget/search_widget/search_body.dart';
import 'package:flutter/material.dart';

import '../../cool/colorcore.dart';

class CustomSearch extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => SearchBody(),));
            },
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),

              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xff3C312F).withOpacity(0.5),
                  )
              ),
              child: Text("search here .."),

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
                image: AssetImage("assets/images/Search icon.png"),
              ),
            ) ,
          ),
        ),
      ],
    );
  }

}