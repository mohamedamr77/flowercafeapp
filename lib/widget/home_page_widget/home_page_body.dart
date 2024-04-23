import 'package:cafeflower/cool/imagecore.dart';
import 'package:cafeflower/model_varibale/list_best_selling.dart';
import 'package:cafeflower/model_varibale/list_category_item.dart';
import 'package:flutter/material.dart';

import '../best_selling_widget/best_selling_item.dart';
import 'category_item.dart';
import 'list_tile_custom.dart';

class CustomHomePageBody extends StatelessWidget {
  const CustomHomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 12.0,
          right: 12.0,
          top: 12.0,
          bottom: 12.0,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Image(image: AssetImage("assets/images/homepage_flower2.jpg"),
                  fit: BoxFit.fitWidth,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width*0.4,
                  child: Text("Choose What Suits Your Test",
                    style: TextStyle(
                      color: Color(0xff3C312F),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Pangolin",
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "search here ..",
                      hintStyle: TextStyle(
                        color: Color(0xff3C312F4D).withOpacity(0.6),
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide: BorderSide(color: Color(0xff3C312F), width: 0.5),
                      ),

                    ),

                  ),
                ),
                SizedBox(width: 12,),
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight:Radius.circular(15),
                    topRight: Radius.circular(15),
                   topLeft: Radius.circular(15),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Color(0xffF7CCC6),
                    child: Center(
                      child:Image(
                        image: AssetImage("assets/images/Search icon.png"),
                      ),
                    ) ,
                  ),
                ),
              ],
            ),
            CustomListtile(
              text: 'Discover by category',),
            SizedBox(
              height: 88,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => CategoryItem(
                index: index,
              ),
                itemCount: categoryList.length, separatorBuilder: (BuildContext context, int index) => SizedBox(width: 19,),
              ),
            ),
            SizedBox(height: 5,),
            CustomListtile(
              text: 'Best selling',),
             GridView.builder(
               shrinkWrap: true,
               gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount: 2,
                 crossAxisSpacing: 29,
                 mainAxisSpacing: 10,
                 childAspectRatio: 0.9,
               ) ,
               itemBuilder: (BuildContext context, int index) {
                 return CustomBestSellingItem(index: index);
               },
               itemCount: bestSellingList.length,
             ),
          ],
        ),
      ),
    );
  }
}

/*
 Text("Discover by category",
              style: TextStyle(
                color: Color(0xff3C312F),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              ),
              Spacer(),
              Text("See All",
              style: TextStyle(
                color: Color(0xffD1A39D),
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
              )
 */


/*
GridView.builder(
               shrinkWrap: true,
                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                   crossAxisSpacing: 10,
                   mainAxisSpacing: 10,
                   childAspectRatio: 0.6
                 ), itemBuilder: (BuildContext context, int index) => CustomBestSellingItem(index: index,),

                 ),
 */