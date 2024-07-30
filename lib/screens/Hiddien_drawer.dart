import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:islami_applacation/colors_APP.dart';
import 'package:islami_applacation/screens/Settings_Screen.dart';
import 'package:islami_applacation/screens/home_screen.dart';

class HiddienDrawer extends StatefulWidget {
  const HiddienDrawer({super.key});

  @override
  State<HiddienDrawer> createState() => _HiddienDrawerState();
}

class _HiddienDrawerState extends State<HiddienDrawer> {
  List<ScreenHiddenDrawer> pages = [];
  final My_Un_Selected_Text_Style =
      TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold);
  final My_Selected_Text_Style = TextStyle(
      color: app_colors.black, fontSize: 20, fontWeight: FontWeight.bold);

  @override
  void initState() {
    super.initState();
    pages = [
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              colorLineSelected: app_colors.brown,
              baseStyle: My_Un_Selected_Text_Style,
              selectedStyle: My_Selected_Text_Style,
              name: " H O M E  P A G E ",),
          const HomeScreen()),
      ScreenHiddenDrawer(
          ItemHiddenMenu(
              colorLineSelected: app_colors.brown,
              baseStyle: My_Un_Selected_Text_Style,
              selectedStyle: My_Selected_Text_Style,
              name: " S E T T I N G S "),
          const SettingsScreen())
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HiddenDrawerMenu(
        tittleAppBar: Text("Islami"),
        slidePercent: 50,
        backgroundColorAppBar: app_colors.brown,
        enableCornerAnimation: true,
        enableScaleAnimation: true,
        backgroundColorMenu: app_colors.light_brown,
        screens: pages,
        initPositionSelected: 0,
        contentCornerRadius: 30,
      ),
    );
  }
}
