import 'package:alfanet/BLoC/saldoBLoC.dart';
import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:alfanet/page/Beranda/PaketBeranda.dart';
import 'package:alfanet/page/Beranda/SuksesDialogBeranda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GroupPaketCostum extends StatelessWidget {
  BuildContext pageContext;
  GroupPaketCostum({this.pageContext});
  @override
  Widget build(BuildContext context) {
    SaldoBLoC bloc = BlocProvider.of<SaldoBLoC>(context);
    return Container(
      width: MediaQuery.of(context).size.width * 0.90,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Paket(
                harga: "1 K",
                pageContext: context,
                tapCallbak: () {
                  SuksesBeranda.sukses(context);
                },
              ),
              Paket(harga: "2 K"),
              Paket(harga: "3 K"),
            ],
          ),
          SizedBox(
            height: displayHeight(context) * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Paket(harga: "4 K"),
              Paket(harga: "5 K"),
              Paket(harga: "10 K")
            ],
          )
        ],
      ),
    );
  }
}
