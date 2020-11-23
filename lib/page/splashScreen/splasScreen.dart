import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:alfanet/page/LoginPage/loginPage.dart';
import 'package:alfanet/page/splashScreen/splashscreenCostum.dart';
import 'package:flutter/material.dart';
import 'package:alfanet/attribute/Colors.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  final color = AllColor();

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: LoginPage(),
      title: Text(
        'Welcome To Alfanet',
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: displayWidth(context, 0.06),
            color: color.color_1),
      ),
      image: Image.asset('assets/alfa_logo_white.png'),
      imageSize: displayWidth(context, 0.50),
      backgroundColor: color.color_0,
      styleTextUnderTheLoader: TextStyle(),
      photoSize: 100.0,
      onClick: () => print("Alfanet"),
      loaderColor: color.color_1,
    );
  }
}
