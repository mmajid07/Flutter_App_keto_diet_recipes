import 'package:flutter/material.dart';

import '../Services/Font_Style.dart';

class BTNComponent extends StatelessWidget {
  final Color? bgcolor;
  final Color? fgcolor;
  final String title;
  VoidCallback onPressed;
    BTNComponent({super.key, required this.title, required this.onPressed, this.bgcolor, this.fgcolor});

    final custemTextStyle=CustemTextStyle();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(

        child: TextButton(onPressed: onPressed,
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              foregroundColor: fgcolor,
               backgroundColor: bgcolor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title, ),
            )),
      ),
    );
  }
}
