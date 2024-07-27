import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_applacation/Sura_model.dart';

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
    if (_versesFuture == null) {
      _versesFuture = loadSuraFile(model.index);
    }
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
              model.name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          body: FutureBuilder(
            future: _versesFuture,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          bottom: 8,
                        ),
                        child: Card(
                          // remember to make it var
                          color: Colors.white,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: " {${index + 1}} ",
                                  style: TextStyle(
                                      fontSize: 35, color: Colors.black),
                                ),
                                TextSpan(
                                  text: snapshot.data![index],
                                  style: TextStyle(
                                      fontSize: 35, color: Colors.black),
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
                );
              } else if (snapshot.hasError) {
                return Text('Error: ${snapshot.error}');
              } else {
                return Center(child: CircularProgressIndicator());
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
