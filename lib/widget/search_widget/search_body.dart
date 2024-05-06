import 'package:flutter/material.dart';

import '../../cool/colorcore.dart';
import '../../cool/imagecore.dart';
import '../../cool/textcore.dart';
import '../../model_varibale/category/categoey_details_list.dart';
import '../../model_varibale/category/category_details_model.dart';
import '../../model_varibale/category/item_model.dart';
import '../product_details_widget/product_details_body.dart';

class SearchBody extends StatefulWidget {
  const SearchBody({super.key});

  @override
  State<SearchBody> createState() => _SearchBodyState();
}

class _SearchBodyState extends State<SearchBody> {

  List<ItemModel> itemsList=[];
  void initState(){
    super.initState();
    for (CategoryDetailsModel itemModel in categoryDetails) {
      List<ItemModel> item = itemModel.items;
      itemsList.addAll(item);
    }
  }

  List<ItemModel> searchList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text("Search",
          style: TextStyle(
            color: ColorApp.basic_color,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,
            color: ColorApp.basic_color,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        actions: [
          Image(image: AssetImage(ImageApp.bestSelling_icon_Image))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
                  Row(
                  children: [
                  Expanded(
                  child: TextFormField(
                    onChanged: (value){
                      setState(() {
                        searchList = itemsList.where((element) =>element.nameProduct.toLowerCase().contains(value.toLowerCase())).toList();
                      });
                    },
                  decoration: InputDecoration(
                  hintText: AppText.seacrhformFieldText,
                    hintStyle: TextStyle(
                      color: Color(0xff3C312F4D).withOpacity(0.6),
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: ColorApp.basic_color, width: 0.5),
                    ),

                  ),

                ),
                ),
                 SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                ClipRRect(
                borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(0),
                bottomRight:Radius.circular(15),
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
                ),
                child: CircleAvatar(
                backgroundColor: ColorApp.binklight_color,
                child: Center(
                child:Image(
                image: AssetImage("assets/images/Search icon.png"),
                ),
                ) ,
                ),
                ),
                ],
                ),
                  SizedBox(height: 20,),
                  Container(
              height: 1,
              width: double.infinity,
              color: ColorApp.binklight_color,
            ),
                  SizedBox(height: 20,),
                   Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 14,),
                itemBuilder: (context, index) => GestureDetector(
                  onTap:(){
                    // Navigator.push(context, MaterialPageRoute(builder: (context) =>
                    //     ProductDetailsBody(
                    //       //itemDetailsList[index]
                    //       item: ,
                    //     )));
                  },
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 12,
                        ),
                        decoration:  BoxDecoration(
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

                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //(itemDetailsList[index].nameProduct.trim()!
                                Text(
                                  searchList.isEmpty?
                                  "${itemsList[index].nameProduct.trim()!}":
                                  "${searchList[index].nameProduct.trim()!}",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontFamily: "Pangolin",
                                    color: ColorApp.basic_color,
                                    fontSize: 17,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: 5,),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width*0.5,
                                  height: MediaQuery.of(context).size.height*0.06 ,
                                  //itemDetailsList[index].describtion.trim(),
                                  child: Text(
                                    searchList.isEmpty ?
                                    "${itemsList[index].describtion.trim()}":
                                    "${searchList[index].describtion.trim()}"
                                    ,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: ColorApp.basic_color.withOpacity(0.65),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5,),
                                //${itemDetailsList[index].price}
                                Text(
                                  searchList.isEmpty ?
                                  "${itemsList[index].price} LE" :
                                   "${searchList[index].price} LE",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: ColorApp.basic_color.withOpacity(0.65),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Image(
                              width: MediaQuery.of(context).size.width*0.34,
                              height: MediaQuery.of(context).size.height*0.15,
                              // itemDetailsList[index].image
                              image: AssetImage(
                                  searchList.isEmpty?
                                  "${itemsList[index].image}"
                                      :
                                  "${searchList[index].image}",
                              ),
                            ),
                          ],
                        ),
                      ),
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
                  ),
                ),
                itemCount: searchList.isEmpty? itemsList.length:searchList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
