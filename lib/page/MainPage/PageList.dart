import 'package:alfanet/page/Beranda/Beranda.dart';
import 'package:alfanet/page/Laporan/Laporan.dart';
import 'package:alfanet/page/Member/Member.dart';
import 'package:alfanet/page/Profil/Profil.dart';
import 'package:flutter/material.dart';

class PageList {
  List<Widget> pages = [Beranda(), Member(), Laporan(), Profil()];
}
