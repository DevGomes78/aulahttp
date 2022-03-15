import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  String? labelText;
  String? hintText;
  Widget? icon;
  bool ObscureText;
  TextEditingController? controller;

  TextWidget(
    this.labelText,
    this.hintText,
    this.icon, {
    this.ObscureText = false,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        prefixIcon: icon,
      ),
      obscureText: ObscureText,
      controller: controller,
    );
  }
}
