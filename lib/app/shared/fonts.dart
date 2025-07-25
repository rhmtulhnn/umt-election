import 'package:flutter/material.dart';

class AppFonts {
  static const String _fontFamily = 'SFProDisplay';

  static TextStyle regular({
    double size = 14,
    Color color = Colors.black,
  }) =>
      TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w400,
        fontSize: size,
        color: color,
      );

  static TextStyle medium({
    double size = 14,
    Color color = Colors.black,
  }) =>
      TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w500,
        fontSize: size,
        color: color,
      );

  static TextStyle semiBold({
    double size = 14,
    Color color = Colors.black,
  }) =>
      TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w600,
        fontSize: size,
        color: color,
      );

  static TextStyle bold({
    double size = 14,
    Color color = Colors.black,
  }) =>
      TextStyle(
        fontFamily: _fontFamily,
        fontWeight: FontWeight.w700,
        fontSize: size,
        color: color,
      );
}
