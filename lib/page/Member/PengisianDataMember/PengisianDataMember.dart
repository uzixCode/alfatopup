import 'package:alfanet/BLoC/PengisianDataMemberSwitchPageBLoC.dart';
import 'package:alfanet/BLoC/pengisianDataMemberInputFieldOnShowKeyboard.dart';
import 'package:alfanet/attribute/Colors.dart';
import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:alfanet/page/Member/PengisianDataMember/BuyBottunCostumPDM.dart';
import 'package:alfanet/page/Member/PengisianDataMember/PriceBarPDM.dart';
import 'package:alfanet/page/Member/PengisianDataMember/TextFieldCostumMemberPDM.dart';
import 'package:alfanet/page/Member/PengisianDataMember/TittleBarPDM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';

class PengisianDataMember extends StatefulWidget {
  @override
  _PengisianDataMemberState createState() => _PengisianDataMemberState();
}

class _PengisianDataMemberState extends State<PengisianDataMember> {
  List<String> paket = ['1K', '2K', '3K', '4K', '5K', '10K'];

  String harga = "Rp 1.000";

  String paketValue = '1K';

  void pilihPaket(String value) {
    setState(() {
      paketValue = value;
    });
  }

  void checkHarga() {
    if (paketValue == '1K') {
      harga = "Rp 1.000";
    } else if (paketValue == '2K') {
      setState(() {
        harga = "Rp 2.000";
      });
    } else if (paketValue == '3K') {
      setState(() {
        harga = "Rp 3.000";
      });
    } else if (paketValue == '4K') {
      setState(() {
        harga = "Rp 4.000";
      });
    } else if (paketValue == '5K') {
      setState(() {
        harga = "Rp 5.000";
      });
    } else if (paketValue == '10K') {
      setState(() {
        harga = "Rp 10.000";
      });
    } else {
      setState(() {
        harga = "Rp 1.000";
      });
    }
  }

  var color = AllColor();

  @override
  Widget build(BuildContext context) {
    PengisianDataMemberInputFieldOnShowKeyboardBLoC blocOnShowKeyboard =
        BlocProvider.of<PengisianDataMemberInputFieldOnShowKeyboardBLoC>(
            context);
    KeyboardVisibility.onChange.listen((bool visible) {
      if (visible == true) {
        blocOnShowKeyboard
            .add(PengisianDataMemberInputFieldOnShowKeyboardEvent.onShow);
      } else if (visible == false) {
        blocOnShowKeyboard
            .add(PengisianDataMemberInputFieldOnShowKeyboardEvent.onHide);
      } else {
        print('Keyboard visibility update. Is visible: ${visible}');
      }
    });
    PengisianDataMemberSwitchPageBLoC blocSwitchPage =
        BlocProvider.of<PengisianDataMemberSwitchPageBLoC>(context);
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          leading: GestureDetector(
            child: Icon(Icons.arrow_back),
            onTap: () {
              blocSwitchPage.add(PengisianDataMemberSwitchPageEvent.page1);
            },
          ),
          title: Text("Voucher Member"),
          backgroundColor: color.color_0,
        ),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(top: 1, child: TittleBar()),
            BlocBuilder<PengisianDataMemberInputFieldOnShowKeyboardBLoC,
                double>(
              builder: (context, position) => Positioned(
                  top: displayHeight(context) * position,
                  child: SizedBox(
                    width: displayWidth(context, 0.90),
                    height: displayHeight(context) * 0.50,
                    child: Card(
                      elevation: 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListView(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            TextFieldCostum(
                              hintText: "Username",
                              labelText: "Username",
                              obscureText: false,
                              controller: null,
                            ),
                            SizedBox(
                              height: displayHeight(context) * 0.04,
                            ),
                            TextFieldCostum(
                              hintText: "Password",
                              labelText: "Password",
                              obscureText: false,
                              controller: null,
                            ),
                            SizedBox(
                              height: displayHeight(context) * 0.04,
                            ),
                            //----------------------------------------

                            //----------------------------------------
                            SizedBox(
                              height: displayHeight(context) * 0.07,
                              child: TextField(
                                textAlign: TextAlign.start,
                                textAlignVertical: TextAlignVertical.center,
                                controller:
                                    TextEditingController(text: paketValue),
                                readOnly: true,
                                cursorColor: color.color_0,
                                style: TextStyle(color: color.color_0),
                                decoration: InputDecoration(
                                    suffix: DropdownButton(
                                      items: paket.map((String value) {
                                        return DropdownMenuItem(
                                            value: value, child: Text(value));
                                      }).toList(),
                                      onChanged: (String value) {
                                        pilihPaket(value);
                                        checkHarga();
                                      },
                                    ),
                                    hintStyle: TextStyle(color: color.color_4),
                                    focusColor: color.color_0,
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                              ),
                            ),
                            SizedBox(
                              height: displayHeight(context) * 0.04,
                            ),
                            BuyButtonCustom(),
                          ],
                        ),
                      ),
                    ),
                  )),
            ),
            Positioned(
                bottom: 1,
                child: PriceBar(
                  price: harga,
                )),
          ],
        ));
  }
}
