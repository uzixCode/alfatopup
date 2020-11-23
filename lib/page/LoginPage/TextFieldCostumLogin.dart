
import 'package:alfanet/attribute/Colors.dart';
import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:flutter/material.dart';

class TextFieldCostum extends StatelessWidget {
  final String hintText;
  final String labelText;
  final bool obscureText;
  final TextEditingController controller;

  TextFieldCostum(
      {this.hintText, this.labelText, this.obscureText, this.controller});

 var color = AllColor();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: displayHeight(context) * 0.07,
      child: TextField(
        controller: controller,
        textAlignVertical: TextAlignVertical.bottom,
        obscureText: obscureText,
        maxLines: 1,
        cursorColor: color.color_0,
        style: TextStyle(color: color.color_0),
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: color.color_4),
            labelText: labelText,
            focusColor: color.color_0,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
