import 'package:cafeflower/cool/colorcore.dart';
import 'package:cafeflower/cool/imagecore.dart';
import 'package:cafeflower/widget/product_details_widget/product_details_body.dart';
import 'package:flutter/material.dart';
import '../../model_varibale/category/category_details_model.dart';
import '../../model_varibale/category/item_model.dart';
import '../home_page_widget/search.dart';
import 'category_details_item.dart';
class CategoryDetailsBody extends StatefulWidget {
  const CategoryDetailsBody({super.key,required this.models,required this.titleAppbar});
  final List<CategoryDetailsModel> models;
  final String titleAppbar;

  @override
  State<CategoryDetailsBody> createState() => _CategoryDetailsBodyState();
}

class _CategoryDetailsBodyState extends State<CategoryDetailsBody> {

  List<ItemModel> itemDetailsList=[];

  void initState(){
    super.initState();
    for (CategoryDetailsModel itemModel in widget.models) {
      List<ItemModel> item = itemModel.items;
      itemDetailsList.addAll(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Text("${widget.titleAppbar.trim()}",
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
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomSearch(),
            SizedBox(height: 20,),
            Container(
              height: 1,
              width: double.infinity,
              color: ColorApp.binklight_color,
            ),
            SizedBox(
              height: 35,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(height: 14,),
                itemBuilder: (context, index) => GestureDetector(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context) =>
                        ProductDetailsBody(
                            item: itemDetailsList[index],
                    )));
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
                                Text(itemDetailsList[index].nameProduct.trim()!,
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
                                SizedBox(height: 5,),
                                Text("${itemDetailsList[index].price} LE",
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
                              image: AssetImage(itemDetailsList[index].image),
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
                itemCount: itemDetailsList.length,
              ),
            )
          ],
        ),
      ),
    );
  }
}
