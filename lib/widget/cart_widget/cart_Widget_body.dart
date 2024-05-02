import 'package:cafeflower/model_varibale/category/item_model.dart';
import 'package:flutter/material.dart';
import '../../cool/colorcore.dart';
import '../../cool/imagecore.dart';
import '../../model_varibale/category/categoey_details_list.dart';
import '../../model_varibale/category/category_details_model.dart';
import '../end_widget/end_body.dart';

class CartBody extends StatefulWidget {
   CartBody({super.key});

  @override
  State<CartBody> createState() => _CartBodyState();
}

class _CartBodyState extends State<CartBody> {

  List<ItemModel> modelsList=[];
  void initState(){
    super.initState();
    for (CategoryDetailsModel itemModel in categoryDetails) {
      List<ItemModel> item = itemModel.items;
      modelsList.addAll(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    List<ItemModel> cartItemList =modelsList.where((check) =>check.addCart==true ).toList();

    int getTotalSelectedItemsCount(){
      int count=0;
      for (ItemModel item in cartItemList) {
        count+=item.count;
      }
      return count;
    }

    double getTotalPrice() {
      double totalPrice = 0;
      for (ItemModel item in cartItemList) {
        totalPrice += item.price * item.count;
      }
      return totalPrice;
    }

    return Scaffold(
      backgroundColor: Colors.white,
       appBar:PreferredSize(
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
                       fontSize: 25,
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
       ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height*0.6,
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) =>
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Stack(
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
                                    Text(cartItemList[index].nameProduct,
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
                                      child: Text(cartItemList[index].describtion,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          color: Color(0xff3C312F).withOpacity(0.65),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height:MediaQuery.of(context).size.height*0.04 ,),
                                    Text("Price :  ${cartItemList[index].price} LE",
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
                                        Text(" ${(cartItemList[index].price)*cartItemList[index].count} LE",
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
                                    Image(image: AssetImage(cartItemList[index].image),
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
                                              onTap: (){
                                                setState(() {
                                                 if(cartItemList[index].count>0){
                                                   cartItemList[index].count--;
                                                 }
                                                });
                                              },
                                              child: CircleAvatar(
                                                radius: 15,
                                                backgroundColor: Color(0xff3C312F),
                                                child: Icon(
                                                  Icons.remove,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Text("${cartItemList[index].count}",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: ColorApp.basic_color,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 20,
                                              ),
                                            ),

                                            GestureDetector(
                                              onTap: (){
                                                setState(() {
                                                  cartItemList[index].count++;
                                                });
                                              },
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
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            cartItemList[index].addCart=false;
                            cartItemList[index].count=0;
                          });
                        },
                        child: Container(
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
                        ),
                      )
                    ]
              ),
                  ),
              separatorBuilder: (BuildContext context, int index) =>SizedBox(height: 10,),
              itemCount: cartItemList.length,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.02,),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Container(
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
                  Text("Selected items (${getTotalSelectedItemsCount()})",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff3C312F),
                    ),
                  ),
                  Text("Total : ${getTotalPrice()} LE",
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

          SizedBox(height: MediaQuery.of(context).size.height*0.02,),

          GestureDetector(
            onTap: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => EndScreenBody(),));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
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
          ),
        ],

      ),

      );
  }
}

