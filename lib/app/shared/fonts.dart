import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class AppFonts {
  static TextStyle light({double size = 14, Color color = Colors.black,}) =>
      GoogleFonts.poppins(
          fontSize: size, fontWeight: FontWeight.w300, color: color);

  static TextStyle regular({double size = 14, Color color = Colors.black}) =>
      GoogleFonts.poppins(
          fontSize: size, fontWeight: FontWeight.w400, color: color);

  static TextStyle medium({double size = 14, Color color = Colors.black}) =>
      GoogleFonts.poppins(
          fontSize: size, fontWeight: FontWeight.w500, color: color);

  static TextStyle semiBold({double size = 14, Color color = Colors.black}) =>
      GoogleFonts.poppins(
          fontSize: size, fontWeight: FontWeight.w600, color: color);

  static TextStyle bold({double size = 14, Color color = Colors.black}) =>
      GoogleFonts.poppins(
          fontSize: size, fontWeight: FontWeight.w700, color: color);
}