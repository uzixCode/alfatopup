import 'package:alfanet/attribute/Colors.dart';
import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

enum SuksesDialogAction { sukses, abort }

class SuksesBeranda {
  static Future<SuksesDialogAction> sukses(
    BuildContext context,
  ) async {
    final action = await showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          var color = new AllColor();
          return GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: FlareActor("assets/sukses.flr", animation: "play"));
        });
  }
}
