import 'package:flutter/material.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.redAccent.shade200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Spacer(),
            Container(
              height: 300,
              width: double.infinity,

              decoration: BoxDecoration(
                color: Colors.white,
                 shape:  BoxShape.circle,

              ),
              child: Center(child: Text("Healthy \n Keto \n Recipes",textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.red),)),
            ),
            Spacer(),
            Center(child: Text("Welcome", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),)),
            Spacer(),
            Center(child: Text("Learn to prepare delicious and healthy keto recipes through this app!", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, color: Colors.white),)),
            Spacer(),
             SizedBox(height: 60,)


          ],
        ),
      ),
    );
  }
}