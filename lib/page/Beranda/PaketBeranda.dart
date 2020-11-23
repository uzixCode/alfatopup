import 'dart:ui';

import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:alfanet/page/Beranda/SuksesDialogBeranda.dart';
import 'package:flutter/material.dart';
import 'package:alfanet/attribute/Colors.dart';

class Paket extends StatefulWidget {
  Paket({@required this.harga, this.pageContext, this.tapCallbak});
  BuildContext pageContext;
  String harga;
  VoidCallback tapCallbak;

  @override
  _PaketState createState() => _PaketState();
}

class _PaketState extends State<Paket> {
  var color = AllColor();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: displayWidth(context, 0.30),
      child: GestureDetector(
        onTap: () {
          showBottomSheet<String>(
              backgroundColor: Colors.grey,
              context: context,
              builder: (BuildContext context) => Container(
                    alignment: Alignment.center,
                    height: displayHeight(context) * 0.35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(blurRadius: 5, color: Colors.grey)],
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(25.0),
                        topRight: const Radius.circular(25.0),
                      ), // BorderRadius
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: SizedBox(
                        width: displayWidth(context, 0.90),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("Pembelian Paket",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: color.color_0,
                                            fontSize:
                                                displayWidth(context, 0.04))),
                                    Text(widget.harga,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: color.color_0,
                                            fontSize:
                                                displayWidth(context, 0.04)))
                                  ],
                                ),
                                Divider(
                                  height: 5,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            Text("Lanjutkan Pembelian Paket ? ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: color.color_0,
                                    fontSize: displayWidth(context, 0.04))),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    color: color.color_1,
                                    splashColor: color.color_2,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          40, 0, 40, 0),
                                      child: Text(
                                        "Batal",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:
                                                displayWidth(context, 0.04)),
                                      ),
                                    )),
                                FlatButton(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    onPressed: widget.tapCallbak,
                                    color: color.color_0,
                                    splashColor: color.color_2,
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          40, 0, 40, 0),
                                      child: Text(
                                        "Beli",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:
                                                displayHeight(context) * 0.03),
                                      ),
                                    )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ));
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/moneyWave.png'),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "PAKET ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: color.color_0,
                          fontSize: displayWidth(context, 0.03)),
                    ),
                    Text(
                      "Rp.${widget.harga}",
                      style: TextStyle(
                          color: color.color_0,
                          fontSize: displayWidth(context, 0.04)),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
