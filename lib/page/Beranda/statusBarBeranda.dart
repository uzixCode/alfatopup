import 'package:alfanet/BLoC/saldoBLoC.dart';
import 'package:alfanet/BLoC/usernameBLoC.dart';
import 'package:alfanet/attribute/Colors.dart';
import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StatusBar extends StatefulWidget {
  String name;
  String saldo;
  final AllColor color;
  StatusBar({this.color, this.name, this.saldo});

  @override
  _StatusBarState createState() => _StatusBarState();
}

class _StatusBarState extends State<StatusBar> {
  @override
  Widget build(BuildContext context) {
    //UserNameBLoC bloc = BlocProvider.of<UserNameBLoC>(context).add(event);
    return SizedBox(
      width: displayWidth(context, 0.90),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Saldo Anda",
            style: TextStyle(color: widget.color.color_4),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                //color: color.color_2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "RP",
                      style: TextStyle(
                          color: widget.color.color_5,
                          fontSize: displayWidth(context, 0.03)),
                    ),
                    BlocBuilder<SaldoBLoC, String>(
                      builder: (context, saldo) => Text(
                        "$saldo",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: widget.color.color_5,
                            fontSize: displayWidth(context, 0.05)),
                      ),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  //bloc.add(UsernameEvent.load);
                },
                child: BlocBuilder<UserNameBLoC, String>(
                  builder: (context, username) => Text(
                    "$username",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: widget.color.color_5,
                        fontSize: MediaQuery.of(context).size.width * 0.05),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
