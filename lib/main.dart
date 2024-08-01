import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_applacation/provider/My_provider.dart';
import 'package:islami_applacation/screens/home_screen.dart';
import 'package:islami_applacation/theme_App_data.dart';
import 'package:provider/provider.dart';
import 'Spalch_screen.dart';
import 'quran branch/Sura_details.dart';
import 'hadith branch/hadith_Details.dart';
import 'screens/Hiddien_drawer.dart';

void main()  async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      startLocale:Locale("ar"),
      supportedLocales: [Locale("en"),Locale("ar"),],
      path: 'assets/tranzelations',
      child: MultiProvider(
        providers: [
          // ... other providers ...
          ChangeNotifierProvider(create: (context) => MyProvider()..getTheme()),
        ],
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return MaterialApp(

      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: provider.appTheme,
      theme: MyThemeData.LightTheme,
      darkTheme: MyThemeData.DarkTheme,
      // Add this line
      initialRoute: '/Spalch_screen',

      routes: {
        '/HomeScreen': (context) =>  HomeScreen(),
        '/SuraDetails': (context) => SuraDetails(),
        '/HadithDetails': (context) =>  HadithDetails(),
        '/Spalch_screen': (context) =>  SpalchScreen(),
        '/HiddienDrawer': (context) =>  HiddienDrawer(),
      },
    );
  }
}
