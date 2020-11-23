import 'package:alfanet/BLoC/bottomNavigationBarSwitchPageBLoC.dart';
import 'package:alfanet/BLoC/saldoBLoC.dart';
import 'package:alfanet/BLoC/usernameBLoC.dart';
import 'package:alfanet/attribute/Colors.dart';
import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:alfanet/page/Beranda/CostumIconBeranda.dart';
import 'package:alfanet/page/Beranda/GroupPaketCostumBeranda.dart';
import 'package:alfanet/page/Beranda/cliperCostumBeranda.dart';
import 'package:alfanet/page/Beranda/logoBeranda.dart';
import 'package:alfanet/page/Beranda/separatorBeranda.dart';
import 'package:alfanet/page/Beranda/statusBarBeranda.dart';
import 'package:alfanet/page/Beranda/topUpcardGroupBeranda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  var color = AllColor();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: displayHeight(context) * 0.35,
                  color: color.color_0,
                ),
              ),
            ),
            Positioned(
                top: (displayHeight(context) - kToolbarHeight) * 0.50,
                child: GroupPaketCostum(
                  pageContext: context,
                )),
            Positioned(
              top: displayHeight(context) * 0.02,
              child: Logo(),
            ),
            Positioned(
              top: displayHeight(context) * 0.12,
              child: StatusBar(
                color: color,
              ),
            ),
            Positioned(
              top: displayHeight(context) * 0.20,
              child: Separator(color: color),
            ),
            Positioned(
                top: (displayHeight(context) - kToolbarHeight) * 0.26,
                child: TopUpCardCostum()),
          ],
        ));
  }
}
