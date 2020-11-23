import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/alfa_logo_white.png",
      width: displayWidth(context, 0.25),
    );
  }
}
