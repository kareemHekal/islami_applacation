import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:islami_applacation/colors_APP.dart';
import 'package:islami_applacation/screens/Settings_Screen.dart';
import 'package:islami_applacation/screens/home_screen.dart';


class HiddienDrawer extends StatelessWidget {

  final List<ScreenHiddenDrawer> pages = [
    ScreenHiddenDrawer(
      ItemHiddenMenu(

        colorLineSelected: Colors.white,
        baseStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        selectedStyle: TextStyle(
          color: app_colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        name: "home_page".tr(),
      ),
      const HomeScreen(),
    ),
    ScreenHiddenDrawer(
      ItemHiddenMenu(
        colorLineSelected: app_colors.white,
        baseStyle: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        selectedStyle: TextStyle(
          color: app_colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        name: "settings".tr(),
      ),
      SettingsScreen(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HiddenDrawerMenu(
        typeOpen: TypeOpen.FROM_LEFT,
        leadingAppBar: Icon(Icons.menu_open_rounded,size: 25,),
        tittleAppBar: Text(
            "app_bar_title".tr(),
          style: Theme.of(context).textTheme.bodyMedium
        ),
        slidePercent: 50,
        enableCornerAnimation: true,
        enableScaleAnimation: true,
        backgroundColorMenu: Colors.grey,
        screens: pages,
        initPositionSelected: 0,
        contentCornerRadius: 30,
      ),
    );
  }
}