import 'package:black_box/const/colors.dart';
import 'package:black_box/utils/appbar.dart';
import 'package:black_box/utils/drawer.dart';
import 'package:flutter/material.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: defaultAppBar(appBarTitle: "Admin", appbarColor: Specs().cGray_400),
        drawer: defaultDrawer(context),
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.laptop_chromebook), label: const Text("SO Office")),
                  const SizedBox( width: 25,),
                  ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.laptop_mac), label: const Text("LAP 4")),
                  const SizedBox( width: 25,),
                  ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.laptop_chromebook), label: const Text("LAP 3")),
                  const SizedBox( width: 25,),
                  ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.laptop_windows), label: const Text("CO Office")),
                  const SizedBox( width: 25,),
                  ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.computer), label: const Text("LAP 2")),
                ],
              ),
              const SizedBox(height: 25,),
              Row(
                children: [
                  const SizedBox( width: 3,),
                  ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.laptop), label: const Text("Class 2")),
                  const SizedBox( width: 40,),
                  ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.laptop_chromebook), label: const Text("Class 1")),
                  const SizedBox( width: 22,),
                  ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.computer), label: const Text("Cisco")),
                  const SizedBox( width: 25,),
                  ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.laptop_mac), label: const Text("LAP 1")),
                ],
              ),
              const SizedBox(height: 50,)

            ],
          ),
        ),
      ),
    );
  }
}