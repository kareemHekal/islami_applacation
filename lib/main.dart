import 'package:flutter/material.dart';
import 'package:islami_applacation/screens/home_screen.dart';
import 'package:islami_applacation/theme_App_data.dart';

import 'Spalch_screen.dart';
import 'quran branch/Sura_details.dart';
import 'hadith branch/hadith_Details.dart';
import 'screens/Hiddien_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme:Theme_app_data.lightTheme,
      initialRoute: '/Spalch_screen',

      routes:{
        '/HomeScreen' :(context) => const HomeScreen(),
        '/SuraDetails' : (context)=> SuraDetails(),
        '/HadithDetails': (context) => const HadithDetails(),
        '/Spalch_screen': (context) => const SpalchScreen(),
        '/HiddienDrawer': (context) => const HiddienDrawer(),
      },
    );
  }
}

