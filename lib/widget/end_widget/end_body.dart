import 'package:flutter/material.dart';

import '../../ui/home_page_Screen.dart';

class EndScreenBody extends StatelessWidget {
  const EndScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     appBar: PreferredSize(
       preferredSize: Size(double.infinity,151),
       child:  Image(image: AssetImage("assets/images/endScreeen.png")),
     ),
     body: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 23),
       child: Column(
         children: [
           SizedBox(height: 80,),
           Image(image: AssetImage("assets/images/endbodycenter.png"),
           width: 221,
             height: 232,
           ),
           SizedBox(height: 100,),
           GestureDetector(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageScreen(),));
             },
             child: Container(
               width: double.infinity,
               padding: EdgeInsets.symmetric(vertical:  MediaQuery.of(context).size.height*0.025),
               decoration: BoxDecoration(
                 color: Color(0xff3C312F),
                 borderRadius: BorderRadius.circular(12),
               ),
               child: Center(
                 child: Text("Back to home",
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
     ),
    );
  }
}
