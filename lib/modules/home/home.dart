// ignore_for_file: sized_box_for_whitespace

import 'package:black_box/const/const.dart';
import 'package:black_box/modules/corruption_discovery/corru_discov.dart';
import 'package:black_box/modules/library/lib.dart';
import 'package:black_box/utils/appbar.dart';
import 'package:black_box/utils/button.dart';
import 'package:black_box/utils/drawer.dart';
import 'package:flutter/material.dart';

String username = "MAJ. Shadow";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: defaultDrawer(
          context,
        ),
        appBar:
            defaultAppBar(appBarTitle: "Hi,... \t\t\t$username", elevation: 3),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Expanded(
                //flex: 1,
                child: Container(
                  //color: Specs().cGray_300,
                  height: double.infinity,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 75),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset("assets/images/lib4.png")),
                    ),
                    const SizedBox(height: 15),
                    defaultButton(
                        btnText: "GET IN!",
                        btnFunction: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const Library()),);},
                        btnColor: Specs().cPurple_150)
                  ]),
                ),
              ),
              Container(
                color: Colors.black,
                height: double.infinity,
                width: 20,
              ),
              Expanded(
                //flex: 1,
                child: Container(
                  //color: Specs().cGray_300,
                  height: double.infinity,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 75),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: Image.asset("assets/images/corru_discov1.png")),
                    ),
                    const SizedBox(height: 15),
                    defaultButton(
                        btnText: "HUP IN!",
                        btnFunction: () {Navigator.push(context,MaterialPageRoute(builder: (context) => const CorruptionDiscovery()),);},
                        btnColor: Specs().cPurple_150)
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
