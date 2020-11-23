import 'package:alfanet/attribute/Colors.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:alfanet/page/LoginPage/LogoLogin.dart';
import 'package:alfanet/page/LoginPage/TextFieldCostumLogin.dart';
import 'package:flutter/material.dart';

import 'package:alfanet/attribute/DisplaySize.dart';

import 'LoginBottunCostumLogin.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final color = new AllColor();
  String from = 'From Alifa Network';
  double _decreaseBy = 0;
  double _multipleBy = 0;

  @override
  void initState() {
    super.initState();

    // Subscribe
    KeyboardVisibility.onChange.listen((bool visible) {
      if (visible == true) {
        OnShowKeyboard();
      } else if (visible == false) {
        OnHideKeyboard();
      } else {
        print('Keyboard visibility update. Is visible: ${visible}');
      }
    });
  }

  void OnShowKeyboard() {
    setState(() {
      _decreaseBy = 40;
      _multipleBy = 3;
    });
  }

  void OnHideKeyboard() {
    setState(() {
      _decreaseBy = 0;
      _multipleBy = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: Stack(
          children: [
            ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: displayHeight(context) * 0.08,
                          ),
                          Logo(),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Login',
                            style: TextStyle(
                                color: color.color_0,
                                fontSize: displayWidth(context, 0.07),
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            //padding: EdgeInsets.all(20),
                            width: displayWidth(context, 0.80),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                TextFieldCostum(
                                  hintText: "Username",
                                  labelText: "Username",
                                  obscureText: false,
                                  controller: null,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                TextFieldCostum(
                                  hintText: "Password",
                                  labelText: "Password",
                                  obscureText: true,
                                  controller: null,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                LoginButtonCustom(),
                              ],
                            ),
                          ),
                          // Spacer(),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: (displayHeight(context) * 0.25) * _multipleBy,
                )
              ],
            ),
            Positioned.fill(
              bottom: 10,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    'From Alifa Network',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: displayWidth(context, 0.04),
                        color: color.color_4),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
