import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:islami_applacation/colors_APP.dart';
import 'package:islami_applacation/home/tabs/Quran_tab.dart';
import 'package:islami_applacation/home/tabs/ahadis.dart';
import 'package:islami_applacation/home/tabs/radioTab.dart';
import 'package:islami_applacation/home/tabs/sebhaTab.dart';
import 'package:provider/provider.dart';

import '../home/tabs/Azkar_tab.dart';
import '../provider/My_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Stack(
      children: [
        Image.asset(
          provider.appTheme == ThemeMode.dark
              ? "assets/images/dark_bg.png"
              : "assets/images/default_bg.png",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Scaffold(

          backgroundColor: Colors.transparent,
          bottomNavigationBar: Container(
            color: provider.appTheme == ThemeMode.dark
                ? app_colors.Dark_blue
                : app_colors.brown,
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 15, left: 15, bottom: 10, top: 15),
              child: GNav(
                onTabChange: (index) {
                  selectedindex = index;
                  setState(() {});
                },
                gap: 8,
                backgroundColor: provider.appTheme == ThemeMode.dark
                    ? app_colors.Dark_blue
                    : app_colors.brown,
                activeColor: provider.appTheme == ThemeMode.dark
                    ? app_colors.yellow
                    : app_colors.black,
                color: app_colors.white,
                tabBackgroundColor: app_colors.white,
                padding: EdgeInsets.all(16),
                tabs: [
                  GButton(

                    icon: FlutterIslamicIcons.quran,
                    text: 'Quran'.tr(),
                    textStyle: TextStyle(
                      fontSize: 15,color:provider.appTheme == ThemeMode.dark
                    ? app_colors.yellow
                      : app_colors.black,
                    ),
                  ),
                  GButton(
                    icon: FlutterIslamicIcons.solidTasbihHand,
                    text: 'sebha'.tr(),
                    textStyle: TextStyle(fontSize: 15,color:provider.appTheme == ThemeMode.dark
                        ? app_colors.yellow
                        : app_colors.black,),
                  ),
                  GButton(
                    icon: FlutterIslamicIcons.quran2,
                    text: 'A hadith'.tr(),
                    textStyle: TextStyle(fontSize: 15,color:provider.appTheme == ThemeMode.dark
                        ? app_colors.yellow
                        : app_colors.black,),
                  ),
                  GButton(

                    icon: Icons.radio,
                    text: 'radio'.tr(),
                    textStyle: TextStyle(fontSize: 15,color:provider.appTheme == ThemeMode.dark
                        ? app_colors.yellow
                        : app_colors.black, ),
                  ),
                  GButton(
                    textColor: provider.appTheme == ThemeMode.dark
                        ? app_colors.yellow
                        : app_colors.black,
                    icon: FlutterIslamicIcons.prayer,
                    text: 'Azkar'.tr(),
                    textStyle: TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
          ),
          body: Tabs[selectedindex],
        ),
      ],
    );
  }
}

List<Widget> Tabs = [
  QuranTab(),
   Sebhatab(),
  AhadisTab(),
   RadioTab(),
   Azkar_tab(),
];
