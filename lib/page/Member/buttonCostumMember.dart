import 'package:alfanet/BLoC/PengisianDataMemberSwitchPageBLoC.dart';
import 'package:alfanet/attribute/DisplaySize.dart';
import 'package:alfanet/page/Member/PengisianDataMember/PengisianDataMember.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MemberButtonCostum extends StatelessWidget {
  GestureTapCallback tapCallback;
  MemberButtonCostum({this.tapCallback});

  @override
  Widget build(BuildContext context) {
    PengisianDataMemberSwitchPageBLoC bloc =
        BlocProvider.of<PengisianDataMemberSwitchPageBLoC>(context);
    return SizedBox(
      width: displayWidth(context, 0.15),
      child: FloatingActionButton(
        onPressed: () {
          bloc.add(PengisianDataMemberSwitchPageEvent.page2);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
