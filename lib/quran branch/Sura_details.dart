import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_applacation/quran%20branch/Sura_model.dart';

import '../colors_APP.dart';

class SuraDetails extends StatefulWidget {
  SuraDetails({super.key});

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  Future<List<String>>? _versesFuture;

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as SuraModel;
    _versesFuture ??= loadSuraFile(model.index);
    return Stack(
      children: [
        Image.asset(
          "assets/images/default_bg.png",
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              (" Quran "),
            ),
          ),
          body: FutureBuilder(
            future: _versesFuture,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Center(
                        child: Text(model.name,
                            style:  Theme.of(context).textTheme.bodySmall)),
                    const Divider(
                      color: app_colors.brown,
                      thickness: 3,
                      endIndent: 100,
                      indent: 100,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                              left: 16,
                              right: 16,
                              bottom: 8,
                            ),
                            child: Card(
                              elevation: 10, // adds a shadow to the entire card
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),

                              color: Colors.white70,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: " {${index + 1}} ",
                                      style:  Theme.of(context).textTheme.bodySmall
                                    ),
                                    TextSpan(
                                      text: snapshot.data![index],
                                      style: Theme.of(context).textTheme.bodyMedium
                                    ),
                                  ],
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          );
                        },
                        itemCount: snapshot.data!.length,
                      ),
                    ),
                  ],
                );
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        )
      ],
    );
  }

  Future<List<String>> loadSuraFile(int index) async {
    String sura =
        await rootBundle.loadString("assets/Qruan_files/${index + 1}.txt");
    List<String> suraLines = sura.split("\n");
    suraLines.removeWhere((line) => line.trim().isEmpty);
    return suraLines;
  }
}
