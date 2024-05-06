import 'package:flutter/material.dart';

import '../../cool/colorcore.dart';
import '../../cool/imagecore.dart';

class SearchBody extends StatelessWidget {
  const SearchBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text("Search",
          style: TextStyle(
            color: ColorApp.basic_color,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,
            color: ColorApp.basic_color,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          Image(image: AssetImage(ImageApp.bestSelling_icon_Image))
        ],
      ),
      body: Column(
        children: [
          Row(
            children: [
              TextFormField(

              ),
            ],
          )
        ],
      ),
    );
  }
}
