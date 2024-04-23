import 'package:flutter/material.dart';

class CustomRowDivider extends StatelessWidget{
  const CustomRowDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 2,
          width: MediaQuery.of(context).size.width/2-30,
          color: Colors.black,
        ),
        const SizedBox(width: 6,),
        const Text("or",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontFamily: "Inter-Regular",
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 6,),
        Container(
          height: 2,
          width: MediaQuery.of(context).size.width/2-30,
          color: Colors.black,
        ),
      ],
    );
  }

}