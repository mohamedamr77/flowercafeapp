import 'package:cafeflower/cool/imagecore.dart';
import 'package:cafeflower/widget/login_signup_widget/text_button.dart';
import 'package:cafeflower/widget/login_signup_widget/text_form_field.dart';
import 'package:flutter/material.dart';
import '../../ui/signup_screen.dart';
import 'button.dart';
import 'divider_or_divider.dart';
import 'have_account_row.dart';
class CustomLoginBody extends StatefulWidget{
  const CustomLoginBody({super.key});
  @override
  State<CustomLoginBody> createState() => _CustomLoginBodyState();
}

class _CustomLoginBodyState extends State<CustomLoginBody> {
  GlobalKey<FormState> formstate=GlobalKey();
   bool onpressed=false;
   bool obscureText=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Color(0xffF7CCC6),
                Colors.white,
              ]
          ),
        ),
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key:formstate ,
              child: Column(
                children: [

                  const SizedBox(height: 25,),

                  const Text("Login",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff3C312F),
                      fontSize: 40,
                      fontFamily: "majalla",
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const SizedBox(height: 25,),

                   FieldLoginSignup(
                    text: 'email address',
                    iconButton: null,
                  validator: (value){
                      if(value!.isEmpty){
                        return 'Please enter your email';
                      }
                      return null;
                  }, obscureText: false,
                  ),

                  const SizedBox(height: 12,),

                   FieldLoginSignup(
                       obscureText: obscureText,
                    text: 'password',
                     iconButton: IconButton(
                       onPressed: () {
                         setState(() {
                           onpressed=!onpressed;
                            obscureText=!obscureText;
                         });
                       },
                       /*
                       Icon(Icons.visibility_off,
                         color:Colors.red,
                       ),
                        */
                       icon:
                       onpressed==true?
                       Icon(Icons.visibility_off,
                         color:Colors.red,
                       ):
                       Icon(Icons.visibility,
                         color: Colors.blue,
                       ),

                     ),
                     validator: (value) {
                      if(value!.isEmpty){
                        return "Please enter your password";
                      }
                      else if(value.length<=7){
                        return "Enter password more than 7 characters ";
                      }
                      return null;

                   },
                   ),

                  const SizedBox(height: 15,),

                  CustomTextButton(
                    text: 'Forgotten password?',
                    onPressed: () {  },),

                  const SizedBox(height: 12,),

                  CustomButton(
                    text: 'Log In',
                    backgroundColor: const Color(0xffFFEFEF),
                    textColor:  Color(0xff3C312F).withOpacity(0.9),
                    onTap: () {
                       if(formstate.currentState!.validate()){
                         print("valid");
                       }
                       else{
                         print("not valid");
                       }
                    },
                  ),

                  const SizedBox(height: 12,),

                  CustomRowAccount(
                    text: "Don’t have an account?",
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) =>  CustomSignUpScreen()));
                    } ,
                    textButton: "sign up" ,
                  ),

                  const SizedBox(height: 12,),

                  const CustomRowDivider(),

                  const SizedBox(height: 12,),

                  CustomButton(
                    text: "Login With Google",
                    backgroundColor: Colors.white,
                    textColor: Color(0xff3C312F).withOpacity(0.9),
                    onTap: () { },
                    child: Image.asset(ImageApp.google_icon_Image),
                  ),

                  const SizedBox(height: 12,),

                  CustomButton(
                    text: "Login With Facebook",
                    backgroundColor:Colors.blueAccent,
                    textColor: Colors.white,
                    onTap: () { },
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Center(
                        child: Text("f",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff0529EB),
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            fontFamily: "JetBrainsMono-Regular",
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20,),

                  const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("About",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Inter-Regular",
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 12,),
                        Text("Help",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Inter-Regular",
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 12,),
                        Text("More",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Inter-Regular",
                            color: Colors.black,
                          ),
                        ),
                      ]
                  )

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

