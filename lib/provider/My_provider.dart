import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProvider extends ChangeNotifier {

  ThemeMode appTheme = ThemeMode.light ;
  Future<void>getTheme()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? isDark =  prefs.getBool("isdark");
    if(isDark!=null){
      if(isDark=true){
        appTheme=ThemeMode.dark;
      }
      else{
        appTheme=ThemeMode.light;
      }
        notifyListeners();
    }
  }

  changeTheme (ThemeMode thememode )async{
    appTheme= thememode ;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isdark', appTheme ==ThemeMode.dark);
    notifyListeners();
  }
}

