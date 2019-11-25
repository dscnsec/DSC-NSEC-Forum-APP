import 'package:flutter/material.dart';

// * Converts hexadecimal color string to Material Color
Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

// * Brand Colors
final googleRed = hexToColor('#DB4437');
final googleBlue = hexToColor('#4285F4');
final googleYellow = hexToColor('#F4B400');
final googleGreen = hexToColor('#0F9D58');
