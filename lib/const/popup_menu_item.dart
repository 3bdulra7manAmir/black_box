import 'package:flutter/material.dart';

class ItemsMenu extends StatelessWidget {
  const ItemsMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              //1
              Container(
                height: 50,
                //width: 100,
                child: const Text("Developer: Shadow Company",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 10,),
              //2
              Container(
                height: 50,
                //width: 100,
                child: const Text("Developer: Shadow Company",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              ),
              const SizedBox(height: 10,),
              //3
              Container(
                height: 50,
                //width: 100,
                child: const Text("Company: TMC",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}