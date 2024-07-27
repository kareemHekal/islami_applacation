import 'package:flutter/material.dart';
import 'package:islami_applacation/screens/home_screen.dart';
import 'package:islami_applacation/theme_App_data.dart';

import 'Sura_details.dart';

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
      initialRoute: '/HomeScreen',

      routes:{
        '/HomeScreen' :(context) => HomeScreen(),
        '/SuraDetails' : (context)=> SuraDetails()
      },
    );
  }
}

