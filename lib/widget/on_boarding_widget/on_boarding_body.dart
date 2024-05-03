import 'package:cafeflower/cool/imagecore.dart';
import 'package:cafeflower/model_varibale/page_view/list_pageview.dart';
import 'package:cafeflower/widget/on_boarding_widget/page_view_item.dart';
import 'package:flutter/material.dart';
import '../../model_varibale/variable_/variable.dart';

class CustomOnBoardingBody extends StatefulWidget {
  const CustomOnBoardingBody({Key? key});

  @override
  State<CustomOnBoardingBody> createState() => _CustomOnBoardingBodyState();
}

class _CustomOnBoardingBodyState extends State<CustomOnBoardingBody> {
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: VariableApp.currentIndex);
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
      body: Stack(
        children: [
          Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                VariableApp.currentIndex == 0
                    ? ImageApp.onBoarding_1_ScreenImage
                    : VariableApp.currentIndex == 1
                    ? ImageApp.onBoarding_2_ScreenImage
                    : ImageApp.onBoarding_3_ScreenImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: PageView.builder(
            controller: _controller,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              return CustomPageViewItem(
                controller: _controller,
                index: index,
              );
            },
            itemCount: pageViewModelList.length,
            onPageChanged: (index) {
              setState(() {
                VariableApp.currentIndex = index;
                // Update the background image based on the current index
                _updateBackgroundImage();
              });
            },
          ),
        ),
          Positioned(
              top: 83,
              left:VariableApp.currentIndex==2? 170: 40,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image(image: AssetImage("assets/images/supermarket_images/onboarding/Vector.png"),
                height: 37,
                  width: 37,
                ),
                Text("FLOWER",
                style: TextStyle(
                    color: Color(0xff3C312F),
                    fontSize: 28,
                      fontFamily: "RozhaOne",
                ),
                ),
                Row(
                  children: [
                    Image(image: AssetImage("assets/images/supermarket_images/onboarding/Line11.png")),
                    SizedBox(width: 3,),
                    Text("Super Market",
                      style: TextStyle(
                        color: Color(0xff3C312F),
                        fontSize: 16,
                        fontFamily: "Sarala",
                      ),
                    ),
                    SizedBox(width: 3,),
                    Image(image: AssetImage("assets/images/supermarket_images/onboarding/Line11.png")),
                  ],
                )
              ],
            ),
          )
        ]
      ),

    );
  }

  void _updateBackgroundImage() {
    setState(() {
      // Update the background image based on the current index
      if (VariableApp.currentIndex == 0) {
        _controller.animateToPage(0, duration: Duration(milliseconds: 300), curve: Curves.ease);
      } else if (VariableApp.currentIndex == 1) {
        _controller.animateToPage(1, duration: Duration(milliseconds: 300), curve: Curves.ease);
      } else if (VariableApp.currentIndex == 2) {
        _controller.animateToPage(2, duration: Duration(milliseconds: 300), curve: Curves.ease);
      }
    });
  }
}



