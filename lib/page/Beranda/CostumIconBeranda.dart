import 'package:flutter/material.dart';
import 'package:alfanet/attribute/Colors.dart';

class CostumIcon extends StatelessWidget {
  GestureTapCallback tapCallback;
  var color = AllColor();
  CostumIcon({this.imageName, this.kind, this.tapCallback});
  String imageName;
  String kind;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tapCallback,
      child: Container(
        child: Column(
          children: [
            ImageIcon(
              AssetImage(
                '$imageName',
              ),
              size: MediaQuery.of(context).size.width * 0.10,
              color: color.color_0,
            ),
            Text("$kind")
          ],
        ),
      ),
    );
  }
}
