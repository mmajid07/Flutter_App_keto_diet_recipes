
import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  final TextEditingController controller;
  const TextFieldComponent({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: TextField(
        textAlign: TextAlign.center,
        controller: controller,
        decoration: InputDecoration(
           hoverColor: Colors.green
        ),
      ),
    );
  }
}
