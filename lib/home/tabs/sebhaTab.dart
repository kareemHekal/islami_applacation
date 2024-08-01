import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_applacation/colors_APP.dart';
import 'package:provider/provider.dart';

import '../../provider/My_provider.dart';

class Sebhatab extends StatefulWidget {
  const Sebhatab({super.key});

  @override
  State<Sebhatab> createState() => _SebhatabState();
}

class _SebhatabState extends State<Sebhatab> {
  int Counter = 0;
  double angle = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Center(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics()
        ,child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Image.asset(
                        provider.appTheme==ThemeMode.dark?
                            "assets/images/head_sebha_dark.png":
                        "assets/images/head_sebha_logo.png"),
                    Padding(
                      padding: const EdgeInsets.only(top: 75),
                      child: Transform.rotate(
                          angle: angle,
                          child: Image.asset(
                              provider.appTheme==ThemeMode.dark?
                                  "assets/images/body_sebha_dark.png":
                              "assets/images/body_sebha_logo.png")),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 27),
                  child: Text("عدد التسبيحات",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 26.0),
                  child: Center(
                    child: LayoutBuilder(
                      builder: (context, constraints) {
                        return Container(
                          width: constraints.maxWidth * 0.2, // 20% of the screen width
                          decoration: BoxDecoration(
                            color: provider.appTheme == ThemeMode.dark
                                ? Color(0xff03346E)
                                : app_colors.brown,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Center(
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  "$Counter",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Counter = 0;
                            setState(() {});
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color:provider.appTheme==ThemeMode.dark?
                                Color(0xff03346E):
                                app_colors.brown ,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text("اعاده البدء",
                                  style:  Theme.of(context).textTheme.bodySmall),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            onTap();
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color:provider.appTheme==ThemeMode.dark?
                                Color(0xff03346E):
                                app_colors.brown ,
                                borderRadius: BorderRadius.circular(30)),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text("اضغط",
                                  style: Theme.of(context).textTheme.bodySmall),
                            ),
                          ),
                        ),
                      ),
                    ),

                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  onTap() {
    Counter++;
    angle += 360 / 4;
    setState(() {});
  }
}
