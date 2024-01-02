import 'package:flutter/material.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Center(child: Icon(Icons.shopping_cart_checkout, size: 300, color: Colors.greenAccent,)),
              Spacer(),
              Text("Shopping List", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
              Spacer(),
              Text("Add ingredient to your shopping list",textAlign: TextAlign.center, style: TextStyle(fontSize: 20,color: Colors.white)),
              Spacer(),
              SizedBox(height: 60,)

            ]
        )
    );
  }
}
