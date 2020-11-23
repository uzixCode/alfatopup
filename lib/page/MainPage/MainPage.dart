import 'package:alfanet/BLoC/PengisianDataMemberSwitchPageBLoC.dart';
import 'package:alfanet/BLoC/createNewVoucherBerandaButtonBLoC.dart';
import 'package:alfanet/BLoC/pengisianDataMemberInputFieldOnShowKeyboard.dart';
import 'package:alfanet/BLoC/saldoBLoC.dart';
import 'package:alfanet/BLoC/usernameBLoC.dart';
import 'package:alfanet/attribute/Colors.dart';
import 'package:alfanet/page/MainPage/PageList.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageList pageList = new PageList();
  var color = new AllColor();
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<UserNameBLoC>(
            create: (context) =>
                UserNameBLoC("Users")..add(UsernameEvent.load)),
        BlocProvider<SaldoBLoC>(
            create: (context) => SaldoBLoC("0")..add(SaldoEvent.load)),
        BlocProvider<PengisianDataMemberSwitchPageBLoC>(
          create: (context) => PengisianDataMemberSwitchPageBLoC(0),
        ),
        BlocProvider<CreateNewVoucherBerandaButtonBLoC>(
          create: (context) => CreateNewVoucherBerandaButtonBLoC('400'),
        ),
        BlocProvider<PengisianDataMemberInputFieldOnShowKeyboardBLoC>(
          create: (context) =>
              PengisianDataMemberInputFieldOnShowKeyboardBLoC(0.25),
        ),
      ],
      child: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomPadding: false,
          backgroundColor: Colors.white,
          bottomNavigationBar: BottomNavigationBar(
              currentIndex: pageIndex,
              onTap: (index) {
                setState(() {
                  pageIndex = index;
                });
              },
              items: [
                BottomNavigationBarItem(
                    backgroundColor: color.color_0,
                    icon: Icon(
                      Icons.home,
                    ),
                    title: Text("Beranda")),
                BottomNavigationBarItem(
                    backgroundColor: color.color_0,
                    icon: Icon(
                      Icons.card_membership,
                    ),
                    title: Text("Member")),
                BottomNavigationBarItem(
                    backgroundColor: color.color_0,
                    icon: Icon(
                      Icons.show_chart,
                    ),
                    title: Text("Laporan")),
                BottomNavigationBarItem(
                    backgroundColor: color.color_0,
                    icon: Icon(
                      Icons.person,
                    ),
                    title: Text("Profil")),
              ]),
          body: IndexedStack(
            children: pageList.pages,
            index: pageIndex,
          ),
        ),
      ),
    );
  }
}
