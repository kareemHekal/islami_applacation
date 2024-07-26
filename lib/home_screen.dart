import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:islami_applacation/colors_APP.dart';
import 'package:islami_applacation/home/tabs/Quran_tab.dart';
import 'package:islami_applacation/home/tabs/ahadis.dart';
import 'package:islami_applacation/home/tabs/radioTab.dart';
import 'package:islami_applacation/home/tabs/sebhaTab.dart';

import 'home/tabs/Settings.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int selectedindex=0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/default_bg.png",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text("Islami"),
          ),
          bottomNavigationBar: Container(
            color: app_colors.brown,
            child: Padding(
              padding: const EdgeInsets.only(right: 15,left: 15,bottom:10,top: 15),
              child: GNav(

                onTabChange: (index){
                  selectedindex = index ;
                  setState(() {

                  });
                },
                gap: 8,
                backgroundColor:app_colors.brown,
                color: app_colors.white,
              tabBackgroundColor: app_colors.white,
                padding: EdgeInsets.all(16),
                tabs: [
                  GButton(
                    icon: Icons.menu_book,
                    text: 'Quran',
                  ),
                  GButton(
                    icon: Icons.front_hand_sharp,
                    text: 'Sebha',
                  ),
                  GButton(
                    icon: Icons.auto_stories,
                    text: 'ahadith',
                  ),
                  GButton(
                    icon: Icons.radio,
                    text: 'Radio',
                  ),
                  GButton(
                    icon: Icons.
                    settings,
                    text: ' settings',
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

List<Widget>Tabs = [
QuranTab(),
  Sebhatab(),
  AhadisTab(),
  RadioTab(),
  SettingsTab(),
];