import 'package:cafeflower/cool/imagecore.dart';
import 'package:cafeflower/model_varibale/list_pageview.dart';
import 'package:cafeflower/widget/on_boarding_widget/page_view_item.dart';
import 'package:flutter/material.dart';
import '../../model_varibale/variable.dart';

class CustomOnBoardingBody extends StatefulWidget {
  const CustomOnBoardingBody({super.key});

  @override
  State<CustomOnBoardingBody> createState() => _CustomOnBoardingBodyState();
}

class _CustomOnBoardingBodyState extends State<CustomOnBoardingBody> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:
               VariableApp.currentIndex==0?
                AssetImage(ImageApp.onBoarding_1_ScreenImage)
                    :
               VariableApp.currentIndex==1?
                AssetImage(ImageApp.onBoarding_2_ScreenImage)
                   :
              AssetImage(ImageApp.onBoarding_3_ScreenImage)
            ,
            fit: BoxFit.cover,
          )
        ),
        child: PageView.builder(
          controller: _controller,
          physics:BouncingScrollPhysics(),
          itemBuilder: (context,index){
          return CustomPageViewItem(
            index: index,
          );
        },
          itemCount: pageViewModelList.length,
           onPageChanged: (index){
             setState(() {
               VariableApp.currentIndex=index;
             });
           },
        ),
      )
    );
  }
}
