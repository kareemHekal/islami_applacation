import 'package:flutter/material.dart';
import 'package:islami_applacation/colors_APP.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/qur2an_screen_logo.png",height: 227,),
        Divider(
          thickness: 3,
          color: app_colors.brown,
        ),
        Text(" Sura Names " ,textAlign:TextAlign.center,),
        Divider(
          thickness: 3,
          color: app_colors.brown,
        ),
      ],
    );
  }
}
