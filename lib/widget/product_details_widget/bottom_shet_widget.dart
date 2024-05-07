
import 'package:cafeflower/cool/imagecore.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,

      child: Column(
        children: [
          SizedBox(
               width: MediaQuery.of(context).size.width/2,
              child: Lottie.asset(ImageApp.lottie1Image)),
        ],
      ),
    );
  }
}