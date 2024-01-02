import 'package:flutter/material.dart';
import 'package:keto_diet_recipes/Screens/Intro_Screen1.dart';

import 'WelcomeScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(
      seconds: 3
    ), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> WelcomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Image.asset("assets/images/keto_Logo.png"),
        alignment: Alignment.center),
    );
  }
}