import 'package:cafeflower/cool/colorcore.dart';
import 'package:cafeflower/model_varibale/carousel_slider/carousel_slider_List.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
class CustomBanner extends StatefulWidget{
  @override
  State<CustomBanner> createState() => _CustomBannerState();
}

class _CustomBannerState extends State<CustomBanner> {
  int currentPage=0;

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       CarouselSlider.builder(
         itemCount: carousel_slider_Images_List.length,
         itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
             Image(image: AssetImage(carousel_slider_Images_List[itemIndex]),
               fit: BoxFit.fitWidth,
               width: double.infinity,
               height: MediaQuery.of(context).size.height*0.015,
             ),
         options: CarouselOptions(
           autoPlay: true,
           enlargeCenterPage: true,
           viewportFraction: 0.9,
           aspectRatio: 2.0,
           initialPage: 0,
           onPageChanged: (value,v){
                 setState(() {
                   currentPage=value;
                 });
           },
           // enlargeFactor: 0.1,

         ),
       ),
       SizedBox(height: MediaQuery.of(context).size.height*0.02,),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             for (int i = 0; i < carousel_slider_Images_List.length; i++)
               Container(
                 margin: EdgeInsets.all(3),
                 height: 15,
                 width:i==currentPage?25 :10,
                 decoration: BoxDecoration(
                   color: i==currentPage? ColorApp.binklight_color: Colors.brown,
                   shape: BoxShape.circle
                 ),
               ),


           ],
         )
     ]
    );
  }
}




/*
 Stack(
      children: [
        Image(image: AssetImage(image),
          fit: BoxFit.fitWidth,
          width: double.infinity,
          height: MediaQuery.of(context).size.height*0.26,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width*0.4,
          child: Text(text,
            style: TextStyle(
              color:ColorApp.basic_color,
              fontSize: 18,
              fontWeight: FontWeight.w400,
              fontFamily: "Pangolin",
            ),
          ),
        ),
      ],
    );
 */