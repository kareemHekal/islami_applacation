import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_applacation/azkar%20branch/zekr%20details.dart';
import 'package:islami_applacation/colors_APP.dart';

class TypeOfZekrWidget extends StatelessWidget {
  final Icon labelIcon;
  final String label;
   String hint;
  final double iconSize;
  List<String> Alzkar = [];
  List<int> Repetes = [];

  TypeOfZekrWidget({
    this.hint = "",
    required this.Repetes,
    required this.Alzkar,
    required this.label,
    required this.labelIcon,
    this.iconSize = 35, // default size
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ZekrDetails(
                  Alzkar: this.Alzkar,
                  Repetes: this.Repetes,
                    )));
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 16,left: 8,right: 8),
        child: Card(elevation: 10, // adds a shadow to the entire card
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),),
          color: app_colors.brown,
          child: Container(
            height: 150,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, top: 20, bottom: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              color: app_colors.black,
                              borderRadius: BorderRadius.circular(25)),
                          width: 5,
                          height: 200,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: IconTheme(
                          data: IconThemeData(size: iconSize),
                          child: labelIcon,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          label,
                          style: GoogleFonts.elMessiri(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
