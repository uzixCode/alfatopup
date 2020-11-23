import 'package:alfanet/attribute/Colors.dart';
import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoryCard extends StatefulWidget {
  @override
  _HistoryCardState createState() => _HistoryCardState();
}

class _HistoryCardState extends State<HistoryCard> {
  AllColor color = AllColor();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: displayWidth(context, 0.90),
        child: Card(
          elevation: 3,
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: ListTile(
                  title: Text(
                    "${DateFormat.yMMMd().format(new DateTime.now())}",
                    style: TextStyle(
                        color: color.color_4,
                        fontSize: displayWidth(context, 0.03)),
                  ),
                  subtitle: Column(
                    children: [
                      Divider(
                        thickness: 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "User :Admin\npassword  :Admin123",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: displayWidth(context, 0.04)),
                          ),
                          Text(
                            "Rp 1.500",
                            style: TextStyle(
                                fontSize: displayWidth(context, 0.05),
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                  trailing: Icon(
                    Icons.print,
                    size: displayWidth(context, 0.10),
                    color: Colors.blue,
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
