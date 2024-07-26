import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_applacation/colors_APP.dart';

class Theme_app_data {
static ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w700,
        color: app_colors.black
    )
  ),
  scaffoldBackgroundColor:  Colors.transparent,
);
}