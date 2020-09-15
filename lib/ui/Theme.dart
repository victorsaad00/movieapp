import 'package:flutter/material.dart';


class Colors {
  Colors._();
  static const Color darkGray = Color(0xFF212121);
  static const Color lightGray = Color(0xFF616161);
  static const Color lightPurple = Color(0xFFD500F9);
}

final ThemeData MovieAppThemeData = new ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.darkGray,
    accentColor: Colors.lightGray,
);

//Theme.of(context).colorScheme.surface