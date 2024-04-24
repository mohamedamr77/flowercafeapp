import 'package:flutter/material.dart';
import '../widget/on_boarding_widget/on_boarding_body.dart';
import '../widget/splach_screen_widget/splach_screen_body.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(
        seconds: 3
    ), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
        return   CustomOnBoardingBody();
      } ));

    }  ) ;
  }

  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomSplachScreenBody()
    );
  }
}