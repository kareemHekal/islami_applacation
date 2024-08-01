

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_applacation/colors_APP.dart';
import 'package:provider/provider.dart';
import '../../provider/My_provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Column(
      children: [
        Expanded(flex: 4,
          child: Column(
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
                    style:  Theme.of(context).textTheme.bodySmall),
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
          ),
        ),
        Expanded(child: SizedBox())
      ],
    );
  }
}
