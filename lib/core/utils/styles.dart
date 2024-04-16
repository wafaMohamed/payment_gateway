import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  static TextStyle textStyle25 = GoogleFonts.inter(
      color: ColorsApp.black,
      fontSize: 25,
      fontWeight: FontWeight.w500,
      height: 0);
  static TextStyle textStyle18 = GoogleFonts.inter(
      color: ColorsApp.black,
      fontSize: 18,
      fontWeight: FontWeight.w400,
      height: 0);

  static TextStyle textStyle18Bold = GoogleFonts.inter(
      color: ColorsApp.black,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      height: 0);
  static TextStyle textStyle24 = GoogleFonts.inter(
      color: ColorsApp.black,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      height: 0);
  static TextStyle textStyle20 = GoogleFonts.inter(
      color: ColorsApp.black.withOpacity(0.800000011920929),
      fontSize: 20,
      fontWeight: FontWeight.w400,
      height: 0);
  static TextStyle textStyle22 = GoogleFonts.inter(
      color: ColorsApp.black.withOpacity(0.800000011920929),
      fontSize: 22,
      fontWeight: FontWeight.w500,
      height: 0);
}

class ColorsApp {
  static Color black = Colors.black;
  static Color green = Color(0xff34a853);
}
