import 'package:cafeflower/cool/colorcore.dart';
import 'package:flutter/material.dart';

class  CustomTextButton extends StatelessWidget{
  final String text;
  void Function()? onPressed;
  CustomTextButton({super.key,required this.text,required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child:
      Text(text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 16.0, // Adjust the font size as needed
          fontWeight: FontWeight.w400,
          fontFamily: "Inter-Regular",
          color: ColorApp.blue_color,
        ),

      ),
    );
  }

}