import 'package:flutter/material.dart';
import 'package:islami_applacation/home_screen.dart';
import 'package:islami_applacation/theme_App_data.dart';

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
      home:HomeScreen(),
    );
  }
}

