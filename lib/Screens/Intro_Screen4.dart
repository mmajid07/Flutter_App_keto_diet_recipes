import 'package:flutter/material.dart';

class IntroScreen4 extends StatelessWidget {
  const IntroScreen4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pinkAccent,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Center(child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: Icon(Icons.notifications, size: 300, color: Colors.yellowAccent,))),
              Spacer(),
              Text("Get Notification", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),),
              Spacer(),
              Text("Get up_to_date recipes regularly and offline mode is supported",textAlign: TextAlign.center, style: TextStyle(fontSize: 20,color: Colors.white)),
              Spacer(),
              SizedBox(height: 60,)

            ]
        )
    );
  }
}
