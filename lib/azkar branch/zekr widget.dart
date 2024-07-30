import 'package:flutter/material.dart';
import 'package:islami_applacation/colors_APP.dart';

class ZekrWiget extends StatefulWidget {
  final String zekr;
  final int repete;

  ZekrWiget({super.key, required this.zekr, required this.repete});

  @override
  State<ZekrWiget> createState() => _ZekrWigetState();
}

class _ZekrWigetState extends State<ZekrWiget> {
  int Counter = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 8, right: 8,bottom: 10),
      child: Card(
    elevation: 10, // adds a shadow to the entire card
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),),
        color: Colors.white70,
        child: Container(
          height: 250,
          child: Row(
            children: [
// this is the counter===================
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 6,bottom: 6,left: 12,right: 6),
                  child: Container(
                    child: ListView(
                      children: [Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(widget.zekr,textAlign: TextAlign.center,),
                      )],
                    ),
                    decoration: BoxDecoration(
                      color: app_colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 3,
                          offset: Offset(0, 1), // changes position of shadow
                        ),
                      ],

                    ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                   Container(

                       child: Image.asset("assets/images/logo2.png",fit: BoxFit.cover,),width: 100,height: 100,),
                    GestureDetector(
                      onTap: () {
                        if (Counter < widget.repete) {
                          Counter++;
                          setState(() {});
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left:2,right: 5),
                        child: Container(
                          child: Center(
                              child: Padding(
                            padding: const EdgeInsets.only(right: 12,left: 12),
                            child: Text("$Counter / ${widget.repete}",style: Theme.of(context).textTheme.bodyLarge,),
                          )),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: Offset(0, 3), // changes position of shadow
                              ),
                              BoxShadow(
                                color: Colors.black26.withOpacity(0.3),
                                spreadRadius: 1,
                                blurRadius: 5,
                                offset: Offset(0, 1), // changes position of shadow
                              ),
                              BoxShadow(
                                color: Colors.black26.withOpacity(0.1),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
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
    );
  }
}
