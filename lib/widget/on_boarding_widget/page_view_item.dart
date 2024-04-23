import 'package:cafeflower/model_varibale/list_pageview.dart';
import 'package:cafeflower/ui/home_page_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../cool/colorcore.dart';
import '../../model_varibale/variable.dart';
class CustomPageViewItem extends StatefulWidget{
  int index;
  CustomPageViewItem({super.key,required this.index});
  @override
  State<CustomPageViewItem> createState() => _CustomPageViewItemState();
}

class _CustomPageViewItemState extends State<CustomPageViewItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox( height:
        widget.index==0?
        MediaQuery.of(context).size.height*0.386
            :
            widget.index==1?
            MediaQuery.of(context).size.height*0.29:
            MediaQuery.of(context).size.height*0.21
          ,),
        Image(image: AssetImage(pageViewModelList[widget.index].image)),
        SizedBox(height: 10),
        Text(pageViewModelList[widget.index].nameProduct,
          style: TextStyle(
            fontFamily: "RockSalt",
            fontSize: 24,
            fontWeight: FontWeight.w400,
          ),
        ),
        SizedBox(height: 5,),
        SizedBox(
          width: 189,
          child: Text(pageViewModelList[widget.index].description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 22,
              fontFamily: "majalla",
              color:ColorApp.basic_color.withOpacity(0.65),
            ),
          ),
        ),
        SizedBox(height: 70),
        ElevatedButton(
          onPressed: (){
           setState(() {
             if(widget.index!=pageViewModelList.length-1){
               setState(() {
                 widget.index++;
                 VariableApp.currentIndex++;
               });
             }
             else if(widget.index==pageViewModelList.length-1){
               Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageScreen(),));
             }
           });
          }, child:
        Text(
          widget.index==pageViewModelList.length-1?
          "Get started":
          "Next"
          ,),
          style: ElevatedButton.styleFrom(
              backgroundColor: ColorApp.basic_color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(60),
                  bottomLeft: Radius.circular(4),
                  topLeft:Radius.circular(60) ,
                  topRight: Radius.circular(4),
                ),
              ),
              minimumSize: Size(260, 44)
          ),
        ),
        SizedBox(height: 10,),
        Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(pageViewModelList.length, (index) => Container(
              margin: EdgeInsets.only(
                right: 5,
              ),
              width:  VariableApp.currentIndex==widget.index? 25:10,
              height: 10,
              decoration: BoxDecoration(
                  color:
                  VariableApp.currentIndex==index?
                  ColorApp.basic_color
                      :
                  Color(0xff3C312F33).withOpacity(0.25),
                  shape: BoxShape.circle
              ),
            ),),
          ),
        ),
      ],
    );
  }
}