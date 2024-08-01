import 'package:flutter/material.dart';
import 'package:islami_applacation/colors_APP.dart';

class MyThemeData {
  static ThemeData LightTheme =
  ThemeData(
      iconTheme: IconThemeData(
        color: app_colors.brown
      ),
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme:
      AppBarTheme(backgroundColor:app_colors.brown,centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(size: 35,color: Colors.black),
          shadowColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Color(0xff242424),
            fontFamily: "ELMessiri",
            fontSize: 30,
            fontWeight: FontWeight.w700,
          )),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white24,
        backgroundColor: Color(0xffB7935F),


      ),
      dividerTheme: DividerThemeData(color: Color(0xffB7935F),thickness: 3,),
      textTheme: TextTheme(
          bodyLarge:TextStyle(
            color: Color(0xff242424),
            fontFamily: "ELMessiri",
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),bodyMedium: TextStyle(
        color: Color(0xff242424),
        fontFamily: "ELMessiri",
        fontSize: 25,
        fontWeight: FontWeight.normal,
      ), bodySmall: TextStyle(
        color: Color(0xff242424),
        fontFamily: "ELMessiri",
        fontSize: 20,
        fontWeight: FontWeight.w300,
      ))
  ) ;



  static ThemeData DarkTheme =
  ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    iconTheme: IconThemeData(

      color: app_colors.yellow
    ),
      appBarTheme:
      AppBarTheme(backgroundColor:Color(0xff141A2E),
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(size: 35,color: Colors.white),
          shadowColor: Colors.transparent,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontFamily: "ELMessiri",
            fontSize: 30,
            fontWeight: FontWeight.w700,
          )),

      dividerTheme: DividerThemeData(color: Color(0xffFACC1D),thickness: 3,),
      textTheme: TextTheme(
          bodyLarge:TextStyle(
            color: Color(0xffF8F8F8),
            fontFamily: "ELMessiri",
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),bodyMedium: TextStyle(
        color: Color(0xffF8F8F8),
        fontFamily: "ELMessiri",
        fontSize: 25,
        fontWeight: FontWeight.normal,
      ), bodySmall: TextStyle(
        color: Color(0xffF8F8F8),
        fontFamily: "ELMessiri",
        fontSize: 20,
        fontWeight: FontWeight.w300,
      ))
  )  ;
}