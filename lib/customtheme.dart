import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyles {
  static TextStyle appThemeLightHeaderTitles =
  TextStyle(
    fontSize: 18,
    fontFamily: GoogleFonts
        .blinker()
        .fontFamily,
    color: Colors.white,
  );

  static TextStyle appThemeLightMenuTitles =
  TextStyle(
    fontSize: 15.5,
    fontFamily: GoogleFonts.roboto().fontFamily,
    color: Colors.black,
  );

  static TextStyle appThemeLightDetailText =
  TextStyle(
    fontSize: 15.5,
    fontFamily: GoogleFonts.roboto().fontFamily,
    color: Colors.black,
  );

  static TextStyle appThemeLightButtonText =
  TextStyle(
    fontSize: 14.5,
    fontFamily: GoogleFonts.roboto().fontFamily,
    color: Colors.white,
  );

}