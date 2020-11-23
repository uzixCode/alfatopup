import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:alfanet/page/Beranda/CostumIconBeranda.dart';
import 'package:flutter/material.dart';

class TopUpCardCostum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: displayWidth(context, 0.90),
      child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CostumIcon(
                  imageName: 'assets/topUp.png',
                  kind: 'Top Up',
                  tapCallback: () {},
                ),
                CostumIcon(
                  imageName: 'assets/transfer.png',
                  kind: 'Transfer',
                ),
                CostumIcon(
                  imageName: 'assets/riwayat.png',
                  kind: 'Riwayat',
                )
              ],
            ),
          )),
    );
  }
}
