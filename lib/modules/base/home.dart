import 'package:black_box/logic/database/details.dart';
import 'package:black_box/utils/appbar.dart';
import 'package:black_box/utils/drawer.dart';
import 'package:flutter/material.dart';

String username = "MAJ. Shadow";

class Home extends StatefulWidget
{
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(

        drawer: defaultDrawer(context, ),
        appBar: defaultAppBar(appBarTitle: "Hi,... \t\t\t$username",),

        body: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount
              (
                  crossAxisCount: 3,
                  childAspectRatio: 3 / 2,
                  mainAxisSpacing: 20
                  //crossAxisSpacing: 10,
              ),
              itemCount: detials.length,
              itemBuilder: (context, index){
                return const GridTile(
                  child: Center(
                    child: Column(
                      children: [
                        //Image(image: ),
                        Text(""),
                        Text(""),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
