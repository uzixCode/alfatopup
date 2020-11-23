import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

enum SuksesDialogAction { sukses, abort }

class Sukses {
  static Future<SuksesDialogAction> sukses(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: FlareActor("assets/sukses.flr", animation: "play"));
      },
    );
  }
}
