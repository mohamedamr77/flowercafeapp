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
          color: Color(0xff858585), // Adjust the color as needed
        ),
          enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffD9FFDF)),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ) ,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueAccent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),

    );
  }

}