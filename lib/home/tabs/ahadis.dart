import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colors_APP.dart';
import '../../hadith model.dart';

class AhadisTab extends StatefulWidget {

   AhadisTab({super.key});

  @override
  State<AhadisTab> createState() => _AhadisTabState();
}

class _AhadisTabState extends State<AhadisTab> {
  List<Hadith_model>All_Ahadith = [];
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadHadisFile();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(height: 219, "assets/images/hadeth_logo.png"),
        const Divider(
          thickness: 3,
          color: app_colors.brown,
        ),
        Center(
            child: Text("Ahadeth", style: GoogleFonts.elMessiri(fontSize: 30))),
        const Divider(
          thickness: 3,
          color: app_colors.brown,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: All_Ahadith.length,
            itemBuilder:(context, index) {
            return Column(
              children: [
                GestureDetector(
                  child: Text(
                    All_Ahadith[index].Title,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.elMessiri(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/HadithDetails',
                    arguments: All_Ahadith[index]);
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
          },),
        )
      ],
    );
  }

  loadHadisFile() {
    rootBundle.loadString("assets/ahadeth_file/ahadeth.txt").then((onValue) {
      List<String> Ahadith = onValue.split("#");
      for (int i = 0; i < Ahadith.length; i++){
        String Hadith = Ahadith[i];
        List<String> HadithLines = Hadith.split("\n");
        HadithLines.removeWhere((line) => line.trim().isEmpty); // Remove empty lines
        String Title = HadithLines[0];
        HadithLines.removeAt(0);
        List<String> Contant = HadithLines;
        Hadith_model hadith_model = Hadith_model(Contant, Title);
        All_Ahadith.add(hadith_model);
        setState(() {

        });
      }
    });
  }
}


