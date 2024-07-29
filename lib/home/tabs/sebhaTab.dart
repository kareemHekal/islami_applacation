import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_applacation/colors_APP.dart';

class Sebhatab extends StatefulWidget {
  const Sebhatab({super.key});

  @override
  State<Sebhatab> createState() => _SebhatabState();
}

class _SebhatabState extends State<Sebhatab> {
  int Counter = 0;
  int index = 0;
  double angle = 0;
  List<String> Azkar = [
    " سبحان الله ",
    " الحمدالله ",
    " الله اكبر ",
    " لا الله الا الله ",
    " لا حول ولا قوه الا بالله ",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.asset("assets/images/head_sebha_logo.png"),
            Padding(
              padding: const EdgeInsets.only(top: 75),
              child: Transform.rotate(
                  angle: angle,
                  child: Image.asset("assets/images/body_sebha_logo.png")),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 27),
          child: Text("عدد التسبيحات",
              textAlign: TextAlign.center,
              style: GoogleFonts.elMessiri(
                  fontSize: 30, fontWeight: FontWeight.bold)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 26.0),
          child: Center(
            child: InkWell(
              onTap: () {},
              child: Container(
                width: 80,
                decoration: BoxDecoration(
                    color: app_colors.brown,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Center(
                    child: Text("$Counter",
                        style: GoogleFonts.elMessiri(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Center(
            child: InkWell(
              onTap: () {
                onTap();
              },
              child: Container(
                decoration: BoxDecoration(
                    color: app_colors.brown,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text("${Azkar[index]}",
                      style: GoogleFonts.elMessiri(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  onTap() {
    Counter++;
    if (Counter % 33 == 0) {
      index++;
      Counter = 0;
    }
    if (index == Azkar.length) {
      index = 0;
    }
    angle += 360 / 4;
    setState(() {});
  }
}
