import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:day_night_themed_switch/day_night_themed_switch.dart';
import 'package:islami_applacation/colors_APP.dart';
import 'package:provider/provider.dart';
import '../provider/My_provider.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MyProvider>(
      builder: (context, provider, child) {
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
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        top: 120,
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    "theme".tr(),
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Transform.scale(
                                  scale: 0.7,
                                  // adjust the scale factor to your liking
                                  child: DayNightSwitch(
                                    value: provider.appTheme == ThemeMode.dark,
                                    onChanged: (value) {
                                      if (value) {
                                        provider.changeTheme(ThemeMode.dark);
                                      } else {
                                        provider.changeTheme(ThemeMode.light);
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 60),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        textAlign: TextAlign.left,
                                        "language".tr(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium,
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 30, right: 15, left: 10),
                                  child: GestureDetector(
                                    onTap: () {
                                      showModalBottomSheet(
                                          context: context,
                                          builder: (context) {
                                            return Container(
                                              decoration: BoxDecoration(
                                                color: provider.appTheme ==
                                                    ThemeMode.dark
                                                    ? app_colors.Dark_blue
                                                    : app_colors.white,
                                                borderRadius: BorderRadius.only(topLeft:Radius.circular(25),topRight: Radius.circular(25))
                                              ),
                                              
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                mainAxisSize:
                                                MainAxisSize.min,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.all(
                                                        8.0),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        context.setLocale(
                                                            Locale("ar"));
                                                      },
                                                      child: Row(
                                                        mainAxisSize: MainAxisSize.max,
                                                        children: [
                                                          Text("Arabic".tr(),
                                                              style: Theme.of(
                                                                  context)
                                                                  .textTheme
                                                                  .bodyMedium
                                                                  ?.copyWith(
                                                                  color:provider.appTheme ==
                                                                      ThemeMode.dark
                                                                      ? context.locale==Locale("ar")?
                                                                  app_colors.yellow:
                                                                  app_colors.white
                                                                      : context.locale==Locale("ar")?
                                                                  app_colors.brown:
                                                                  app_colors.black)),
                                                          Spacer(),
                                                          context.locale ==
                                                              Locale("ar")
                                                              ? Icon(
                                                              Icons
                                                                  .done_all_outlined,
                                                              color:provider.appTheme ==
                                                                  ThemeMode
                                                                      .dark
                                                                  ? context.locale==Locale("ar")?
                                                              app_colors.yellow:
                                                              app_colors.Dark_blue
                                                                  : context.locale==Locale("ar")?
                                                              app_colors.brown:
                                                              app_colors.white
                                                          )
                                                              : SizedBox()
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.all(
                                                        8.0),
                                                    child: GestureDetector(
                                                      onTap: () {
                                                        context.setLocale(
                                                            Locale("en"));
                                                      },
                                                      child: Row(
                                                        mainAxisSize: MainAxisSize.max,
                                                        children: [
                                                          Text("English".tr(),
                                                              style: Theme.of(
                                                                  context)
                                                                  .textTheme
                                                                  .bodyMedium
                                                                  ?.copyWith(
                                                                  color: provider.appTheme ==
                                                                      ThemeMode.dark
                                                                      ? context.locale==Locale("en")?
                                                                  app_colors.yellow:
                                                                  app_colors.white
                                                                      : context.locale==Locale("en")?
                                                                  app_colors.brown:
                                                                  app_colors.black)),
                                                          Spacer(),
                                                          context.locale !=
                                                              Locale("ar")
                                                              ? Icon(
                                                              Icons
                                                                  .done_all_outlined,
                                                              color: provider.appTheme ==
                                                                  ThemeMode
                                                                      .dark
                                                                  ? context.locale==Locale("en")?
                                                              app_colors.yellow:
                                                              app_colors.Dark_blue
                                                                  : context.locale==Locale("en")?
                                                              app_colors.brown:
                                                              app_colors.white
                                                          )
                                                              : SizedBox()
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            );
                                          });
                                    },
                                    child: Container(
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              width: 1.5,
                                              color: provider.appTheme ==
                                                      ThemeMode.dark
                                                  ? app_colors.Dark_blue
                                                  : app_colors.brown),
                                          borderRadius: BorderRadius.circular(30),
                                          color:
                                              provider.appTheme == ThemeMode.dark
                                                  ? Color(0xff03346E)
                                                  : app_colors.white),
                                      height: 80,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 20, left: 20),
                                            child: Text(context.locale==Locale("ar")?
                                            "Arabic".tr():
                                            "English".tr(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                        color: provider
                                                                    .appTheme ==
                                                                ThemeMode.dark
                                                            ? app_colors.yellow
                                                            : app_colors
                                                                .brown)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
