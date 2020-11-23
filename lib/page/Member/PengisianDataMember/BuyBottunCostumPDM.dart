import 'package:alfanet/attribute/Colors.dart';
import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:alfanet/page/MainPage/MainPage.dart';
import 'package:alfanet/page/Member/PengisianDataMember/AlertDialogPDM.dart';
import 'package:alfanet/page/Member/PengisianDataMember/SuksesDialogPDM.dart';
import 'package:flutter/material.dart';

class BuyButtonCustom extends StatelessWidget {
  var color = AllColor();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: displayHeight(context) * 0.06,
      child: FlatButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          onPressed: () async {
            final alert = await Dialogs.yesAbortDialog(context, "Payment",
                "Apakah Anda Akan Melanjutkan Pembelian ? ");
            if (alert == DialogAction.yes) {
              final sukses = await Sukses.sukses(context, "Sukses", "SUKSES");
            }
          },
          color: color.color_0,
          splashColor: color.color_2,
          child: Text(
            "Beli Voucher",
            style: TextStyle(
                color: Colors.white, fontSize: displayHeight(context) * 0.03),
          )),
    );
  }
}
