import 'package:flutter/material.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:islami_applacation/colors_APP.dart';
import 'package:islami_applacation/home/tabs/Quran_tab.dart';
import 'package:islami_applacation/home/tabs/ahadis.dart';
import 'package:islami_applacation/home/tabs/radioTab.dart';
import 'package:islami_applacation/home/tabs/sebhaTab.dart';

import '../home/tabs/Azkar_tab.dart';

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
                tabs: const [
                  GButton(
                    icon:FlutterIslamicIcons.quran,
                    text: 'Quran',
                      textStyle: TextStyle(fontSize: 20)
                  ),
                  GButton(
                    icon:FlutterIslamicIcons.solidTasbihHand
                    ,
                    text: 'Sebha',
                      textStyle: TextStyle(fontSize: 20)
                  ),
                  GButton(
                    icon:FlutterIslamicIcons.quran2,
                    text: 'ahadith',
                      textStyle: TextStyle(fontSize: 20)
                  ),
                  GButton(
                    icon: Icons.radio,
                    text: 'Radio',
                      textStyle: TextStyle(fontSize: 20)
                  ),
                  GButton(
                    icon: FlutterIslamicIcons.prayer
                    ,
                    text: ' Azkar',
                      textStyle: TextStyle(fontSize: 20)
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
  const Sebhatab(),
  AhadisTab(),
  const RadioTab(),
  const Azkar_tab(),
];