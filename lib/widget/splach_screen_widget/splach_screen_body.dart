import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import '../../cool/imagecore.dart';

class CustomSplachScreenBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Container(
     width: double.infinity,
     height: double.infinity,
     // image: AssetImage(ImageApp.splacScreen_BG_Image),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageApp.splacScreen_BG_Image),
          fit: BoxFit.cover,
        )
      ),
     child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       children: [
         ZoomIn(
           child: Center(
              child: Image.asset(ImageApp.splacScreen_logo_Image,
             ),
           ),
         ),

       ],
     ),
   );
  }

}