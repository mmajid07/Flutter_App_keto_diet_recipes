import 'package:flutter/material.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(),
          Center(child: Container(

              child: Icon(Icons.favorite, size: 300, color: Colors.red,))),
          Spacer(),
          Text("Favorie List", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
          Spacer(),
          Text("Add Recipes to your favorie list",textAlign: TextAlign.center, style: TextStyle(fontSize: 20,color: Colors.white)),

          Spacer(),
          SizedBox(height: 60,)

        ]
      )
    );
  }
}
