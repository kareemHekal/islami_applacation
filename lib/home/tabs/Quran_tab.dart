import 'package:flutter/material.dart';
import 'package:islami_applacation/Sura_model.dart';
import 'package:islami_applacation/colors_APP.dart';
import 'package:google_fonts/google_fonts.dart';

class QuranTab extends StatefulWidget {
  QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  List<String> SuraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/images/qur2an_screen_logo.png",
          height: 227,
        ),
        const Divider(
          thickness: 3,
          color: app_colors.brown,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                " Sura Names ",
                textAlign: TextAlign.center,
                style: GoogleFonts.elMessiri(
                    fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
            IconButton(
                alignment: Alignment.bottomLeft,
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: CustomSearchDelegate(),
                  );
                },
                icon: Icon(
                  Icons.search,
                  color: app_colors.brown,
                )),
          ],
        ),
        const Divider(
          thickness: 3,
          color: app_colors.brown,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: SuraNames.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    GestureDetector(
                      child: Text(
                        SuraNames[index],
                        textAlign: TextAlign.center,
                        style: GoogleFonts.elMessiri(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, '/SuraDetails',
                            arguments: SuraModel(index, SuraNames[index]));
                      },
                    ),
                    const Row(
                      children: [
                        Expanded(
                            child: Icon(
                          Icons.star_border_purple500_sharp,
                          color: app_colors.brown,
                        )),
                        Expanded(
                          child: Divider(
                            thickness: 2,
                            color: app_colors.brown,
                          ),
                          flex: 2,
                        ),
                        Expanded(
                            child: Icon(
                          Icons.star_border_purple500_sharp,
                          color: app_colors.brown,
                        )),
                      ],
                    )
                  ],
                );
              }),
        )
      ],
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {

  List<String> searchTerms = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
        appBarTheme:
            AppBarTheme(toolbarHeight: 70, backgroundColor: app_colors.brown));
  }

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var sura in searchTerms) {
      if (sura.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(sura);
      }
    }
    return Stack(
      children: [
        Image.asset(
          "assets/images/default_bg.png",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        ListView.builder(
            itemCount: matchQuery.length,
            // Use matchQuery.length instead of searchTerms.length
            itemBuilder: (context, index) {
              return Column(
                children: [
                  GestureDetector(
                    child: Text(
                      matchQuery[index],
                      // Use matchQuery[index] instead of searchTerms[index]
                      textAlign: TextAlign.center,
                      style: GoogleFonts.elMessiri(
                          fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/SuraDetails',
                          arguments: SuraModel(
                              index,
                              matchQuery[
                                  index])); // Use matchQuery[index] instead of searchTerms[index]
                    },
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: Icon(
                        Icons.star_border_purple500_sharp,
                        color: app_colors.brown,
                      )),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: app_colors.brown,
                        ),
                        flex: 2,
                      ),
                      Expanded(
                          child: Icon(
                        Icons.star_border_purple500_sharp,
                        color: app_colors.brown,
                      )),
                    ],
                  )
                ],
              );
            }),
      ],
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var sura in searchTerms) {
      if (sura.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(sura);
      }
    }
    return Stack(
      children: [
        Image.asset(
          "assets/images/default_bg.png",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        ListView.builder(
            itemCount: matchQuery.length,
            // Use matchQuery.length instead of searchTerms.length
            itemBuilder: (context, index) {
              return Column(
                children: [
                  GestureDetector(
                    child: Text(
                      matchQuery[index],
                      // Use matchQuery[index] instead of searchTerms[index]
                      textAlign: TextAlign.center,
                      style: GoogleFonts.elMessiri(
                          fontSize: 25, fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/SuraDetails',
                          arguments: SuraModel(
                              index,
                              matchQuery[
                              index])); // Use matchQuery[index] instead of searchTerms[index]
                    },
                  ),
                  const Row(
                    children: [
                      Expanded(
                          child: Icon(
                            Icons.star_border_purple500_sharp,
                            color: app_colors.brown,
                          )),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                          color: app_colors.brown,
                        ),
                        flex: 2,
                      ),
                      Expanded(
                          child: Icon(
                            Icons.star_border_purple500_sharp,
                            color: app_colors.brown,
                          )),
                    ],
                  )
                ],
              );
            }),
      ],
    );
  }
}
