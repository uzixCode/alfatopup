import 'package:alfanet/attribute/Colors.dart';
import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:alfanet/page/MainPage/MainPage.dart';
import 'package:flutter/material.dart';

class LoginButtonCustom extends StatelessWidget {
  var color = AllColor();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: displayHeight(context) * 0.06,
      child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MainPage()),
            );
          },
          color: color.color_0,
          splashColor: color.color_2,
          child: Text(
            "Masuk",
            style: TextStyle(
                color: Colors.white, fontSize: displayHeight(context) * 0.03),
          )),
    );
  }
}
