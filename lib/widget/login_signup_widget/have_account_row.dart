import 'package:cafeflower/cool/colorcore.dart';
import 'package:cafeflower/widget/login_signup_widget/text_button.dart';
import 'package:flutter/material.dart';


class CustomRowAccount extends StatelessWidget{
  final String? text;
  final String? textButton;
  void Function()? onPressed;

  CustomRowAccount({super.key,required this.text,required this.textButton,required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("$text",
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 16,
            fontFamily: "Inter-Regular",
            fontWeight: FontWeight.w400,
            color: ColorApp.black_color,
          ),),
        const SizedBox(width: 3,),
        CustomTextButton(
          text: '$textButton',
          onPressed: onPressed,
        )
      ],
    );
  }

}