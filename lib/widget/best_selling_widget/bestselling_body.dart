import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../cool/colorcore.dart';
import '../../cool/imagecore.dart';
import 'gridview_bestselling.dart';

class CustomBestSellingBody extends StatefulWidget {
  const CustomBestSellingBody({super.key});
  @override
  State<CustomBestSellingBody> createState() => _CustomBestSellingBodyState();
}

class _CustomBestSellingBodyState extends State<CustomBestSellingBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text("Best Selling",
          style: TextStyle(
            color: ColorApp.basic_color,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Image(image: AssetImage(ImageApp.bestSelling_icon_Image))
        ],
      ),
      body: Container(
          padding: EdgeInsets.all(16),
          child: CustomGridView()),
    );
  }
}
