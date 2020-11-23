import 'package:alfanet/BLoC/PengisianDataMemberSwitchPageBLoC.dart';
import 'package:alfanet/attribute/Colors.dart';
import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:alfanet/page/Member/buttonCostumMember.dart';
import 'package:alfanet/page/Member/PengisianDataMember/PengisianDataMember.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'HistoryCardMember.dart';
import 'SearchBarMember.dart';

class Member extends StatefulWidget {
  @override
  _MemberState createState() => _MemberState();
}

class _MemberState extends State<Member> {
  var color = AllColor();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PengisianDataMemberSwitchPageBLoC, int>(
      builder: (context, index) => IndexedStack(index: index, children: [
        Scaffold(
          resizeToAvoidBottomPadding: false,
          appBar: AppBar(
            title: Text("Riwayat Transaksi"),
            backgroundColor: color.color_0,
          ),
          body: Stack(
            alignment: Alignment.center,
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: SearchBar(color: color)),
              Positioned(
                  top: displayHeight(context) * 0.15,
                  child: SizedBox(
                    width: displayWidth(context, 0.90),
                    height: displayHeight(context) * 0.60,
                    child: ListView(
                      children: [
                        HistoryCard(),
                        HistoryCard(),
                        HistoryCard(),
                        HistoryCard(),
                        HistoryCard(),
                        HistoryCard(),
                        HistoryCard(),
                        HistoryCard(),
                        HistoryCard(),
                        HistoryCard(),
                      ],
                    ),
                  )),
              Positioned(
                top: displayHeight(context) * 0.79,
                child: MemberButtonCostum(),
              )
            ],
          ),
        ),
        PengisianDataMember(),
      ]),
    );
  }
}
