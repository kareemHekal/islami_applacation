import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/simple_hidden_drawer/provider/simple_hidden_drawer_provider.dart';
import 'package:islami_applacation/colors_APP.dart';

class SpalchScreen extends StatefulWidget {
  const SpalchScreen({super.key});

  @override
  State<SpalchScreen> createState() => _SpalchScreenState();
}

class _SpalchScreenState extends State<SpalchScreen> {
@override
  void initState() {
    Timer(Duration(seconds: 4),(){
      Navigator.pushReplacementNamed(context, '/HiddienDrawer');
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: app_colors.splash_screen_background,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Spacer(),
          Container(
            decoration: BoxDecoration(
              color: app_colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Image.asset(
              "assets/images/logo2.png",
              width: 262,
              height: 262,
            ),
          ),
          Spacer(),
          TweenAnimationBuilder(
            tween: Tween<double>(begin: 1, end: 30),
            duration: const Duration(seconds: 2), // define duration
            builder: (context, value, child) {
              // define builder
              return Text(
                  textAlign: TextAlign.center,
                  " Islami app by  ", // display some text
                style: TextStyle(
                  fontFamily: 'PlaywriteBEVLG',
                  fontSize: value,
                  fontWeight: FontWeight.w500,
                  color: app_colors.brown,
                ), // animate font size
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50,top: 20),
            child: TweenAnimationBuilder(
              tween: Tween<double>(begin: 1, end: 20),
              duration: const Duration(seconds: 2), // define duration
              builder: (context, value, child) {
                // define builder
                return Text(
                  textAlign: TextAlign.center,
                  " _ Kareem Hekal _ ", // display some text
                  style: TextStyle(
                    fontFamily: 'PlaywriteBEVLG',
                    fontSize: value,
                    color: app_colors.brown,
                    fontWeight: FontWeight.bold
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}