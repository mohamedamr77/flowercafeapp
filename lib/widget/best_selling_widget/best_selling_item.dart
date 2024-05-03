import 'package:flutter/material.dart';
import '../../cool/colorcore.dart';
import '../../model_varibale/best_selling/list_best_selling.dart';

class CustomBestSellingItem extends StatefulWidget {
  int index;
   CustomBestSellingItem({super.key,required this.index});
  @override
  State<CustomBestSellingItem> createState() => _CustomBestSellingItemState();
}

class _CustomBestSellingItemState extends State<CustomBestSellingItem> {
  @override
  Widget build(BuildContext context) {
    return   Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          height: MediaQuery.of(context).size.height*0.22,
          width: MediaQuery.of(context).size.width*0.42,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xffF7CCC6).withOpacity(0.25),
                    ColorApp.white_color
                  ],
                  begin:Alignment.topCenter,
                  end:Alignment.bottomCenter,
                  stops: [0.55,0.45]
              ),
              borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(
                color: ColorApp.border_container_bestselling_color,
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage(bestSellingList[widget.index].image),
                width: MediaQuery.of(context).size.width*0.3,
                height: MediaQuery.of(context).size.height*0.1,
              ),
              SizedBox(height: 15,),
              Text(bestSellingList[widget.index].nameProduct,
                style: TextStyle(
                  color: ColorApp.basic_color,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10,),
              Text("${bestSellingList[widget.index].price} LE",
                style: TextStyle(
                  color: ColorApp.basic_color,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          right: 3,
          top: 9,
          child: CircleAvatar(
            backgroundColor: ColorApp.white_color ,
            child: Center(
              child: IconButton(
                onPressed: () {
                  setState(() {
                    bestSellingList[widget.index].fav=!bestSellingList[widget.index].fav;
                  });
                },
                icon:  bestSellingList[widget.index].fav==false?
                Icon(Icons.favorite_border, color :ColorApp.basic_color):
                Icon(Icons.favorite, color :ColorApp.basic_color)
              ),
            ),
          ),
        ),
        //third
        Container(
          width: 28.21,
          height: 29.24,
          decoration: BoxDecoration(
            color: Color(0xff3C312F),
            borderRadius: BorderRadius.only(
              topLeft:Radius.circular(3) ,
              bottomRight:Radius.circular(20) ,
            )
          ),
          child: Icon(Icons.add,
          color: Colors.white,
          ),
        ),
      ],
    );
  }
}
