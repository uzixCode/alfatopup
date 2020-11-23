import 'package:alfanet/attribute/Colors.dart';
import 'package:flutter/material.dart';

class PriceBar extends StatefulWidget {
  String price;
  PriceBar({this.price});

  @override
  _PriceBarState createState() => _PriceBarState();
}

class _PriceBarState extends State<PriceBar> {
  var color = AllColor();

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Text(
          "${widget.price}",
          style: TextStyle(
              color: color.color_harga,
              fontSize: MediaQuery.of(context).size.width * 0.05),
        ),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.width * 0.15,
        decoration: BoxDecoration(
          boxShadow: <BoxShadow>[BoxShadow(blurRadius: 8, color: Colors.grey)],
          color: Colors.white,
        ));
  }
}
