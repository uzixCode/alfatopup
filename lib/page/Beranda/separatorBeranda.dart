import 'package:alfanet/attribute/Colors.dart';
import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:flutter/material.dart';

class Separator extends StatelessWidget {
  const Separator({
    Key key,
    @required this.color,
  }) : super(key: key);

  final AllColor color;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: displayWidth(context, 0.90),
        height: displayHeight(context) * 0.02,
        decoration: BoxDecoration(
            color: color.color_4, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(" "),
        ));
  }
}
