import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle textStyle(double fontSize, Color color, FontWeight fw){
  return GoogleFonts.montserrat(
    fontSize: fontSize,
    color: color,
    fontWeight: fw
  );
}

Color textColor = const Color(0xffa69cb7);