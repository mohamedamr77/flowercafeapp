import 'package:cafeflower/cool/textcore.dart';
import 'package:cafeflower/model_varibale/page_view/list_pageview.dart';
import 'package:cafeflower/ui/home_page_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../cool/colorcore.dart';
import '../../model_varibale/variable_/variable.dart';

class CustomPageViewItem extends StatefulWidget {
  int index;
  final PageController controller;
  CustomPageViewItem({Key? key, required this.index,required this.controller}) : super(key: key);

  @override
  State<CustomPageViewItem> createState() => _CustomPageViewItemState();
}

class _CustomPageViewItemState extends State<CustomPageViewItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: widget.index == 0
              ? MediaQuery.of(context).size.height * 0.33
              : widget.index == 1
              ? MediaQuery.of(context).size.height * 0.328
              : MediaQuery.of(context).size.height * 0.33,
        ),
        Image(image: AssetImage(pageViewModelList[widget.index].image),
        width: double.infinity,
          height: 250,
        ),
        SizedBox(height: 10),
        Text(
          pageViewModelList[widget.index].nameProduct,
          style: TextStyle(
            fontFamily: "RockSalt",
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 5),
        SizedBox(
          width: 189,
          child: Text(
            pageViewModelList[widget.index].description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22,
              fontFamily: "majalla",
              color: ColorApp.basic_color.withOpacity(0.65),
            ),
          ),
        ),
        SizedBox(height: 10),
        ElevatedButton(
          onPressed: () {
            setState(() {
              if (widget.index != pageViewModelList.length - 1) {
                widget.controller.animateToPage(widget.index + 1, duration: Duration(milliseconds: 300), curve: Curves.ease);
                VariableApp.currentIndex = widget.index + 1;
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageScreen()),
                );
              }
            });
          },


          child: Text(
            widget.index == pageViewModelList.length - 1
                ? AppText.getStratedText
                : AppText.nextText,
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: ColorApp.basic_color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(60),
                bottomLeft: Radius.circular(4),
                topLeft: Radius.circular(60),
                topRight: Radius.circular(4),
              ),
            ),
            minimumSize: Size(260, 44),
          ),
        ),
        SizedBox(height: 10),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              pageViewModelList.length,
                  (index) => Container(
                margin: EdgeInsets.only(right: 5),
                width: VariableApp.currentIndex == widget.index ? 25 : 10,
                height: 10,
                decoration: BoxDecoration(
                  color: VariableApp.currentIndex == index
                      ? ColorApp.basic_color
                      : Color(0xff3C312F33).withOpacity(0.25),
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
