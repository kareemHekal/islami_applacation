import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_applacation/azkar%20branch/zekr%20widget.dart';
import 'package:provider/provider.dart';

import '../provider/My_provider.dart';

class ZekrDetails extends StatefulWidget {
  List<String> Alzkar = [];
  List<int> Repetes = [];

  ZekrDetails({required this.Alzkar, required this.Repetes, super.key});

  @override
  State<ZekrDetails> createState() => _ZekrDetailsState();
}

class _ZekrDetailsState extends State<ZekrDetails> {
  List<ZekrWiget> azkaar = [];

  @override
  void initState() {
    super.initState();
    load_azkar();
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
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
          appBar: AppBar(
title: Text("app_bar_title".tr(),style:  Theme.of(context).textTheme.bodySmall,),
          ),
          body: Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: azkaar.length,
                  itemBuilder: (context, index) {
                    return azkaar[index];
                  },
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  load_azkar() {
    for (int i = 0; i < widget.Alzkar.length; i++) {
      azkaar.add(ZekrWiget(zekr: widget.Alzkar[i], repete: widget.Repetes[i]));
    }
    setState(() {});
  }
}
