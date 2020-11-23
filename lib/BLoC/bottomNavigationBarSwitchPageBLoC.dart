import 'package:alfanet/api/getUsernameApi.dart';
import 'package:alfanet/api/postNewVoucherButtonBerandaApi.dart';
import 'package:alfanet/page/Beranda/Beranda.dart';
import 'package:alfanet/page/Laporan/Laporan.dart';
import 'package:alfanet/page/Member/Member.dart';
import 'package:alfanet/page/Profil/Profil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

//enum BottomNavigationBarSwitchPageEvent { k1,k2,k3,k4,k5,k10}
enum BottomNavigationBarSwitchPageEvent { beranda, member, laporan, profile }

class BottomNavigationBarSwitchPageBLoC
    extends Bloc<BottomNavigationBarSwitchPageEvent, Widget> {
  Widget page = Beranda();
  BottomNavigationBarSwitchPageBLoC(Widget initialState) : super(Beranda());

  @override
  Stream<Widget> mapEventToState(
      BottomNavigationBarSwitchPageEvent event) async* {
    // TODO: implement mapEventToState
    switch (event) {
      case BottomNavigationBarSwitchPageEvent.beranda:
        {
          page = Beranda();
        }

        break;
      case BottomNavigationBarSwitchPageEvent.member:
        {
          page = Member();
        }

        break;
      case BottomNavigationBarSwitchPageEvent.laporan:
        {
          page = Laporan();
        }

        break;
      case BottomNavigationBarSwitchPageEvent.profile:
        {
          page = Profil();
        }

        break;

      default:
        {
          page = Beranda();
        }
    }
    yield page;
  }
}
