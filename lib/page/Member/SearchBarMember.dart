import 'package:alfanet/attribute/Colors.dart';
import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:flutter/material.dart';
class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
    @required this.color,
  }) : super(key: key);

  final AllColor color;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: displayWidth(context, 1),
      height: displayHeight(context) * 0.15,
      child: Container(
        width: displayWidth(context, 0.85),
        height: displayHeight(context) * 0.07,
        child: TextField(
          maxLines: 1,
          textAlignVertical: TextAlignVertical.bottom,
          cursorColor: color.color_0,
          style: TextStyle(color: color.color_0),
          decoration: InputDecoration(
              fillColor: color.color_5,
              hintText: "Cari Riwayat Transaksi",
              hintStyle: TextStyle(color: color.color_4),
              focusColor: color.color_0,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ),
      ),
    );
  }
}