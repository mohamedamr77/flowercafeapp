import 'package:cafeflower/cool/colorcore.dart';
import 'package:flutter/material.dart';

class  FieldLoginSignup extends StatelessWidget{
  final String? text;
  final Widget? iconButton;
  String? Function(String?)? validator;
    bool obscureText;
   FieldLoginSignup({super.key,required this.text,required this.iconButton,required this.validator,required this.obscureText});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
           validator:validator ,
          decoration: InputDecoration(
          filled: true,
          hintText: text,
          suffixIcon: iconButton,
          hintStyle: const TextStyle(
          fontSize: 15.0, // Adjust the font size as needed
          fontWeight: FontWeight.w400,
          fontFamily: "Inter-Regular",
          color: ColorApp.hinttext_color, // Adjust the color as needed
        ),
          enabledBorder:  OutlineInputBorder(
          borderSide: BorderSide(color: ColorApp.enabledBorder_textformfield_login_signup_color),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ) ,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: ColorApp.focusedBorder_textformfield_login_signup_color),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }

}