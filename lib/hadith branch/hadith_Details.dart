import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_applacation/colors_APP.dart';
import 'package:islami_applacation/hadith%20branch/hadith%20model.dart';

class HadithDetails extends StatelessWidget {
  const HadithDetails({super.key});

  @override
  Widget build(BuildContext context) {
    var model = ModalRoute.of(context)?.settings.arguments as Hadith_model;
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
            title: Text("Ahadith",style:  Theme.of(context).textTheme.bodySmall,),
          ),
          body: Column(
            children: [
              Center(
                  child: Text(model.Title,
                      style: GoogleFonts.elMessiri(
                        fontSize: 30,
                      ))),
              Divider(
                color: app_colors.brown,
                thickness: 3,
                endIndent: 100,
                indent: 100,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: model.Contant.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 10, // adds a shadow to the entire card
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),),

                        color: Colors.white70,
                          child: Text(model.Contant[index],textAlign:TextAlign.right,style: Theme.of(context).textTheme.bodySmall)),
                    );
                  },
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
