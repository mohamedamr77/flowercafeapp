import 'package:flutter/material.dart';

import '../../cool/colorcore.dart';
import '../../cool/imagecore.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 91,
            flexibleSpace:Column(
              children: [
                SizedBox(height: 65,),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(  Icons.arrow_back_ios_new,
                        color: Color(0xff3C312F),),
                      onPressed: (){
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      "Cart",
                      style: TextStyle(
                          color: Color(0xff3C312F),
                          fontSize: 22,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 12,
                      ),
                      child: Image(image: AssetImage(ImageApp.bestSelling_icon_Image)),
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                ),
                Divider(
                  color:Color(0xffF7CCC6) ,
                  thickness: 2,
                ),
              ],
            ),
            elevation: 0,
            backgroundColor: Colors.white,
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height*0.63,
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) =>Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width*0.04,
                          vertical: MediaQuery.of(context).size.height*0.02,
                        ),
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height*0.248,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xffF7CEC8).withOpacity(0.9),
                              Color(0xffF7CEC8).withOpacity(0),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,

                          ),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Color(0xffF7CCC6),
                            width: 0.6,
                          ),

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Oreo Milkshake",
                                      style: TextStyle(
                                        fontFamily: "Pangolin",
                                        color: Color(0xff3C312F),
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    SizedBox(height:MediaQuery.of(context).size.height*0.01 ,),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width*0.5
                                      ,
                                      child: Text("There are many variations of passages of Lorem Ipsum",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Color(0xff3C312F).withOpacity(0.65),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height:MediaQuery.of(context).size.height*0.04 ,),
                                    Text("Price :  45. LE",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 16,
                                        // fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height:MediaQuery.of(context).size.height*0.01 ,),
                                    Row(
                                      children: [
                                        Text("Total : ",
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 16,
                                            // fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        Text(" 135. LE",
                                          style: TextStyle(
                                            color: Color(0xff3C312F),
                                            fontSize: 16,
                                            // fontWeight: FontWeight.w500,
                                          ),
                                        ),

                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Image(image: AssetImage(ImageApp.milkshake_Drinks_Image),
                                      height: 110,
                                      width: 100,
                                    ),
                                    SizedBox(height: 2,),
                                    Center(
                                      child: Container(
                                        height: 29,
                                        width: MediaQuery.of(context).size.width*0.29,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              colors: [
                                                Color(0xffF7CCC6),
                                                Color(0xffFCEFED),
                                                Color(0xffFFFFFF),
                                              ],
                                              begin: Alignment.centerRight,
                                              end: Alignment.centerLeft
                                          ),
                                          borderRadius: BorderRadius.circular(100),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            GestureDetector(
                                              onTap: (){},
                                              child: CircleAvatar(
                                                radius: 15,
                                                backgroundColor: Color(0xff3C312F),
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Text("${05}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: ColorApp.basic_color,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20,
                                              ),
                                            ),

                                            GestureDetector(
                                              onTap: (){},
                                              child: CircleAvatar(
                                                radius: 15,
                                                backgroundColor: Color(0xff3C312F),
                                                child: Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )

                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 32,
                        decoration: BoxDecoration(
                            color: Color(0xffF7CCC6),
                            borderRadius:BorderRadius.only(
                              topRight:Radius.circular(20) ,
                              bottomLeft:Radius.circular(100) ,
                            )
                        ),
                        child: Icon(
                          Icons.close,
                          color: Color(0xff232323),
                        ),
                      )
                    ]
                ),
                separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 10,),
                itemCount: 9,
              ),
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: MediaQuery.of(context).size.height*0.02,)),
          SliverToBoxAdapter(
            child: Container(
              margin:EdgeInsets.only(
                right: 16,
                left: 16,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 16,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffFDF0EE),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Selected items (5)",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3C312F),
                    ),
                  ),
                  Text("Total : 225 LE",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3C312F),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartBody(),));
              },
              child: Container(
                margin:EdgeInsets.only(
                  top: 16,
                  right: 16,
                  left: 16,
                ),
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical:  MediaQuery.of(context).size.height*0.025),
                decoration: BoxDecoration(
                  color: Color(0xff3C312F),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text("Confirm",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
          ),

        ],
      ),
      );
  }
}

/*
Container(
              padding: EdgeInsets.symmetric(
                horizontal: 14,
                vertical: 16,
              ),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xffFDF0EE),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Selected items (5)",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3C312F),
                    ),
                  ),
                  Text("Total : 225 LE",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3C312F),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height*0.02,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CartBody(),));
              },
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical:  MediaQuery.of(context).size.height*0.025),
                decoration: BoxDecoration(
                  color: Color(0xff3C312F),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Center(
                  child: Text("Confirm",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 17,
                    ),
                  ),
                ),
              ),
            ),
 */