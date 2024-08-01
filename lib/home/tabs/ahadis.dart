import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../../colors_APP.dart';
import '../../hadith branch/hadith model.dart';
import '../../provider/My_provider.dart';

class AhadisTab extends StatefulWidget {
  AhadisTab({super.key});

  @override
  State<AhadisTab> createState() => _AhadisTabState();
}

class _AhadisTabState extends State<AhadisTab> {
  List<Hadith_model> All_Ahadith = [];

  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadHadisFile();
  }


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(height: 219, "assets/images/hadeth_logo.png"),
          const Divider(
            thickness: 3,
          ),
          Center(
              child:
                  Text("A hadith".tr(), style:Theme.of(context).textTheme.bodySmall)),
          const Divider(
            thickness: 3,

          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: All_Ahadith.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  GestureDetector(
                    child: Text(
                      All_Ahadith[index].Title,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodySmall
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
                          color:  app_colors.brown,
                      )),
                      Expanded(
                        child: Divider(
                          thickness: 2,
                        ),
                        flex: 2,
                      ),
                      Expanded(
                          child: Icon(
                            color: app_colors.brown,
                        Icons.star_border_purple500_sharp,
                      )),
                    ],
                  )
                ],
              );
            },
          )
        ],
      ),
    );
  }

  loadHadisFile() {
    rootBundle.loadString("assets/ahadeth_file/ahadeth.txt").then((onValue) {
      List<String> Ahadith = onValue.split("#");
      for (int i = 0; i < Ahadith.length; i++) {
        String Hadith = Ahadith[i];
        List<String> HadithLines = Hadith.split("\n");
        HadithLines.removeWhere(
            (line) => line.trim().isEmpty); // Remove empty lines
        String Title = HadithLines[0];
        HadithLines.removeAt(0);
        List<String> Contant = HadithLines;
        Hadith_model hadith_model = Hadith_model(Contant, Title);
        All_Ahadith.add(hadith_model);
        setState(() {});
      }
    });
  }
}
