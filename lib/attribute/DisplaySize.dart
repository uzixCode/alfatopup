import 'package:flutter/material.dart';

MediaQueryData mediaquery(BuildContext context) {
  return MediaQuery.of(context);
}

Size displaySize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  return displaySize(context).height -
      MediaQuery.of(context).padding.top -
      kToolbarHeight -
      kBottomNavigationBarHeight;
}

double displayWidth(BuildContext context, double persen) {
  return displaySize(context).width * persen;
}
