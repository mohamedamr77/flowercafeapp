import 'package:cafeflower/cool/imagecore.dart';
import 'package:cafeflower/widget/login_signup_widget/text_form_field.dart';
import 'package:flutter/material.dart';
import 'button.dart';
import 'divider_or_divider.dart';
import 'have_account_row.dart';
class CustomSignUpBody extends StatefulWidget {
  CustomSignUpBody({super.key});

  @override
  State<CustomSignUpBody> createState() => _CustomSignUpBodyState();
}

class _CustomSignUpBodyState extends State<CustomSignUpBody> {
  GlobalKey<FormState> formstate=GlobalKey();

  late var checkPassword;

   bool onpressed=false;
   bool  obscureText=false;

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
                  const SizedBox(height: 14,),
                  const Text("Sign Up",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff3C312F),
                      fontSize: 40,
                      fontFamily: "majalla",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 14,),
                  FieldLoginSignup(
                    text: 'email address',
                      iconButton: null,
                      obscureText: false,
                     validator: (value){
                      if(value!.isEmpty){
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 12,),
                  FieldLoginSignup(
                    obscureText: false,
                    text: 'create password',
                    iconButton: null,
                     validator: (value ) {
                      if(value!.isEmpty){
                        checkPassword=value;
                        return 'Enter password';
                      }

                  },
                  ),
                  const SizedBox(height: 15,),
                  FieldLoginSignup(
                    obscureText: obscureText,
                    text: 'Confirm password',
                    iconButton: IconButton(
                      onPressed: () {
                       setState(() {
                         onpressed=!onpressed;
                         obscureText=!obscureText;
                       });
                      },

                      icon:onpressed? Icon(Icons.visibility_off,
                        color:Colors.red,
                      ):  Icon(Icons.visibility,
                        color: Colors.blue,
                      ),

                    ),
                    validator: (value) {
                    if(value!.isEmpty){
                      return "Enter password";
                    }
                     if(value!=checkPassword){
                      return "please enter the same password";
                    }
                    return null;

                  },
                  ),
                  const SizedBox(height: 12,),
                  CustomButton(
                    text: 'Sign up',
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
                    text: "Already have an account?",
                    onPressed:(){
                     Navigator.pop(context);
                    } ,
                    textButton: "Login" ,
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
      )
    );
  }
}