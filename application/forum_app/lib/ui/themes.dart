import 'package:flutter/material.dart';

ThemeData defaultTheme() {
  ThemeData base = ThemeData(
    brightness: Brightness.light,
  );
  return base.copyWith(
    textTheme: base.textTheme.apply(fontFamily: 'Roboto'),
    primaryTextTheme: base.primaryTextTheme.apply(fontFamily: 'Google Sans'),
    accentTextTheme: base.accentTextTheme.apply(fontFamily: 'Google Sans'),
  );
}
