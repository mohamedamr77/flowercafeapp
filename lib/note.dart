/*
 Image(
                          image: AssetImage(itemDetailsList[index].image),
                        )
 */

/*
Text(itemDetailsList[index].name_prpoduct.trim(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: "Pangolin",
                          color: ColorApp.basic_color,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

 */

/*
Text(itemDetailsList[index].describtion.trim(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: ColorApp.basic_color.withOpacity(0.65),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

 */

/*
Text("${itemDetailsList[index].price} LE",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: ColorApp.basic_color.withOpacity(0.65),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

 */



/*
Stack(
                  children: [
                    Container(
                      width: 329,
                      height: 118,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xffF7CEC8),
                                Color(0xffF7CEC8).withOpacity(0),
                              ]
                          ),
                          border: Border.all(
                            color: Color(0xffF7CCC6),
                            width: 0.6,
                          )
                      ),
                    ),
                    Positioned(
                        left: 214,
                        right:13 ,
                        bottom: 12,
                        child: Image(
                          image: AssetImage(itemDetailsList[index].image),
                        )
                    ),
                    Positioned(
                      left: 16,
                      right:209 ,
                      top: 16,
                      bottom: 81,
                      child: Text(itemDetailsList[index].name_prpoduct.trim(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontFamily: "Pangolin",
                          color: ColorApp.basic_color,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 14,
                      right:137 ,
                      top: 41,
                      bottom: 38,
                      child: Text(itemDetailsList[index].describtion.trim(),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: ColorApp.basic_color.withOpacity(0.65),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      right:257 ,
                      top: 89,
                      bottom: 8,
                      child: Text("${itemDetailsList[index].price} LE",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: ColorApp.basic_color.withOpacity(0.65),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
 */

/*
   SizedBox(
             height: MediaQuery.of(context).size.height*0.56,
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
 */

/*
 SizedBox(height: MediaQuery.of(context).size.height*0.02,),
 */

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
 */

/*
SizedBox(height: MediaQuery.of(context).size.height*0.02,),
 */

/*
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

/*
PreferredSize(
          preferredSize:Size.fromHeight(110),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height*0.09,),
              ListTile(
                leading:  IconButton(
                  icon: Icon(Icons.arrow_back_ios,
                    color: ColorApp.basic_color,
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
                trailing:   Image(image: AssetImage(ImageApp.bestSelling_icon_Image)),
                title: Center(
                  child: Text("Cart",
                    style: TextStyle(
                      color: ColorApp.basic_color,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              Divider(
                color:Color(0xffF7CCC6) ,
                 thickness: 2,
              ),
            ],
          )

      )
 */