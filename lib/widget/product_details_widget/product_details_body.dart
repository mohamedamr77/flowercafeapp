import 'package:cafeflower/cool/textcore.dart';
import 'package:flutter/material.dart';
import '../../cool/colorcore.dart';
import '../../cool/imagecore.dart';
import '../../model_varibale/category/item_model.dart';
import '../cart_widget/cart_Widget_body.dart';

class ProductDetailsBody extends StatefulWidget {
  final ItemModel item;

  ProductDetailsBody({required this.item});

  @override
  State<ProductDetailsBody> createState() => _ProductDetailsBodyState();
}

class _ProductDetailsBodyState extends State<ProductDetailsBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Color(0xffF7CCC6),
      body: CustomScrollView(
        physics: NeverScrollableScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Color(0xffF7CCC6),
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
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Image(image: AssetImage(widget.item.image),
                 height: MediaQuery.of(context).size.height*0.2,
                width: MediaQuery.of(context).size.height*0.3,
              ),
            ),
            expandedHeight: MediaQuery.of(context).size.height*0.34,
          ),
          SliverToBoxAdapter(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height*0.63,
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )
              ),
              child:Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 23,
                ),
                child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                    Row(
                      children: [
                        Text("${widget.item.nameProduct}",
                          style: TextStyle(
                            color: ColorApp.basic_color,
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            fontFamily: "Pangolin",
                          ),
                        ),
                        Spacer(),
                        Text("${widget.item.price.toInt()} LE",
                          style: TextStyle(
                            color: ColorApp.basic_color,
                            fontWeight: FontWeight.w400,
                            fontSize: 20,

                          ),
                        )
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    Text("${widget.item.describtion}",
                    style: TextStyle(
                      color: Color(0xff3C312F).withOpacity(0.65),
                    ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.01,),
                    Divider(
                      color:Color(0xffF7CCC6) ,

                    ),
                    SizedBox(height: MediaQuery.of(context).size.height*0.03,),
                    Center(
                      child: Container(
                        height: 30,
                        width: 145,
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
                            FloatingActionButton(onPressed: (){
                                          setState(() {
                                            if(widget.item.count>0){
                                              widget.item.count--;
                                            }
                                          });

                            },
                                backgroundColor: Color(0xff3C312F),
                                elevation: 0,
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                )
                            ),

                            Text("${widget.item.count}",
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
                                  widget.item.count++;
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
                    SizedBox(height: MediaQuery.of(context).size.height*0.06,),
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
                          Text("Selected items (${widget.item.count})",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color(0xff3C312F),
                          ),
                          ),
                          Text("Total : ${(widget.item.count)*(widget.item.price)} LE",
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
                    SizedBox(height: MediaQuery.of(context).size.height*0.04,),
                    GestureDetector(
                       onTap: (){
                         widget.item.addCart=true;

                         Navigator.push
                           (
                             context, MaterialPageRoute(builder: (context) => CartBody(),
                         )
                         ).then((value) {setState(() {
                           });});

                       },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical:  MediaQuery.of(context).size.height*0.025),
                        decoration: BoxDecoration(
                          color: Color(0xff3C312F),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text("Add to cart",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 17,
                          ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ) ,
            ),
          )
        ],
      ),
    );
  }
}
