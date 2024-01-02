import 'package:flutter/material.dart';
import 'package:keto_diet_recipes/Screens/Intro_Screen1.dart';
import 'package:keto_diet_recipes/Screens/Main_Screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Intro_Screen2.dart';
import 'Intro_Screen3.dart';
import 'Intro_Screen4.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {

  PageController _pageIndecator=PageController();

  bool onLastPage=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageIndecator,
            onPageChanged: (index){
              setState(() {
                onLastPage= (index==3);
              });

            },
            children: [
              IntroScreen1(),
              IntroScreen2(),
              IntroScreen3(),
              IntroScreen4(),
            ],
          ),

          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 25,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [

                Divider(

                  color: Colors.white,),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Container(),
                      SmoothPageIndicator(
                          effect: SlideEffect(
                            dotColor: Colors.transparent.withOpacity(0.1),
                            activeDotColor: Colors.white,
                            dotHeight: 8,
                            radius: 4,
                            dotWidth: 8,

                          ),
                          controller: _pageIndecator, count: 4),
                      onLastPage
                      ? GestureDetector(
                          onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>MainScreen()));
                          },
                          child: Text('Got IT',style: TextStyle(fontSize: 15,color: Colors.white),))
                          :GestureDetector(
                          onTap: (){
                            _pageIndecator.nextPage(duration: Duration(milliseconds: 200), curve: Curves.easeIn);
                          },
                          child: Text('Next',style: TextStyle(fontSize: 15,color: Colors.white),))
                    ],
                  ),
                ),
              ],
            ),
          )

        ],

      ),
    );
  }
}
