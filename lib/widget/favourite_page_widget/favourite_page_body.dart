import 'package:cafeflower/model_varibale/best_selling/list_best_selling.dart';
import 'package:flutter/material.dart';
import '../../cool/colorcore.dart';
import '../../cool/imagecore.dart';
import '../../model_varibale/best_selling/bestselling_model.dart';
class FacvouritePageBody extends StatefulWidget{
  @override
  State<FacvouritePageBody> createState() => _FacvouritePageBodyState();
}

class _FacvouritePageBodyState extends State<FacvouritePageBody> {
  @override
  Widget build(BuildContext context) {
    List<BestSellinModel> favList =bestSellingList.where((favItem) =>favItem.fav==true ).toList();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
        centerTitle: true,
        title: Image(
          image: AssetImage(ImageApp.appBar_title_Image),
          height: 43,
          width: 80,
        ),
        actions: [
          IconButton(onPressed: (){}, icon:Icon(
            Icons.favorite_outlined,
            color: Colors.red,
          ))
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) =>Card(
          child: ListTile(
            leading: Image.asset(favList[index].image,
              width: 80,
              height: 80,
            ),
            title: Text(favList[index].nameProduct),
            subtitle: Text("${favList[index].price}"),
            trailing: Padding(
              padding: const EdgeInsets.only(
                right: 10.0,
                top: 9.0,
              ),

              child: GestureDetector(
                onTap: ()
                {
                  setState(() {
                    favList[index].fav=false;
                  });
                },

                child: CircleAvatar(
                  backgroundColor: ColorApp.flavor_color.withOpacity(0.1),
                  child: Center(
                    child:  Icon(Icons.favorite,
                      color:ColorApp.basic_color,
                    ),

                  ),
                ),
              ),
            ),
          ),
        ),
        itemCount: favList.length,
      ),
    );
  }
}