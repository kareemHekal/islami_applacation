

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_applacation/colors_APP.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
          child: Image.asset(
            "assets/images/radio_image.png",

          ),
        ),
        Center(
          child: Text(" اذاعه القران الكريم",
              style: GoogleFonts.elMessiri(
                  fontSize: 30, fontWeight: FontWeight.bold)),
        ),
        const Row(
          children: [Spacer(),
            Icon(Icons.arrow_circle_right_rounded,size: 50,color: app_colors.brown,),
            Spacer(),
            Icon(Icons.play_arrow,size: 80,),
            Spacer(),
            Icon(Icons.arrow_circle_left_rounded,size: 50,color: app_colors.brown,),
            Spacer(),
          ],
        )
      ],
    );
  }
}
