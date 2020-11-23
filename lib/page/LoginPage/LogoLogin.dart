import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:flutter/material.dart';
class Logo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: displayWidth(context, 0.50),
      child: Image.asset(
        'assets/alfa_logo_blue.png',
      ),
    );
  }
}