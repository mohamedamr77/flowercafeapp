import 'package:cafeflower/cool/colorcore.dart';
import 'package:flutter/cupertino.dart';

class CustomBanner extends StatelessWidget{
  final String image;
  final String text;

  const CustomBanner({super.key,required this.image,required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
  }

}