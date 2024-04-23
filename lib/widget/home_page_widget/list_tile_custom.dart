import 'package:flutter/material.dart';

class CustomListtile  extends StatelessWidget{
  String text;

  CustomListtile({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:Text(text,
        style: TextStyle(
          color: Color(0xff3C312F),
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      trailing: GestureDetector(
        onTap: (){},
        child: Container(
          width: 70,
          height: 15,
          child: Row(
            children: [
              FittedBox(
                child: Text("See All",
                  style: TextStyle(
                    color: Color(0xffD1A39D),
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(width: 3,),
              Image(image: AssetImage("assets/images/Arrow---Right.png")),
            ],
          ),
        ),
      ) ,
    );
  }

}