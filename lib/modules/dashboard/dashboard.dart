import 'package:black_box/const/const.dart';
import 'package:black_box/utils/appbar.dart';
import 'package:black_box/utils/drawer.dart';
import 'package:black_box/utils/dropdownmenu.dart';
import 'package:black_box/utils/textfield.dart';
import 'package:flutter/material.dart';


List<String> itemsList = <String>['Mouse', 'Keyboard', 'Power Cable', 'VGA Cable', 'HDMI Cable', 'Neon Lamb', 'CRT Screen', 'Case', 'Ethernet'];
List<String> specsList = <String>['Color', 'Serial Number', 'Brand'];
String dropdownitemsValue = itemsList.first;
String dropdownspecsValue = specsList.first;

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {

String dropdownitemsValue = itemsList.first; // Initialize dropdownValue here
String dropdownspecsValue = specsList.first; // Initialize dropdownValue here

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
              Column(
                children: [
                Row(
                  children: [
                    defultDropDownMenu(
                        wordsList: itemsList,
                        dropdownValueDefultValue: dropdownitemsValue,
                        dropDownMenuIcon: const Icon(Icons.arrow_downward),
                        elevationValue: 1,
                        underline: Container(height: 2,color: Colors.deepPurple,),
                        textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        onChangedFunction: (String? value) {setState(() {dropdownitemsValue = value!;});},
                        containerWidth: 110
                        ),
                    const SizedBox(width: 45,),
                    defaultTextField(
                      containerWidth: 200,
                    ),
                    const SizedBox(width: 20,),
                  ],
                ),
                const SizedBox(height: 30,),
                Row(
                  children: [
                       defultDropDownMenu(
                        wordsList: specsList,
                        dropdownValueDefultValue: dropdownspecsValue,
                        dropDownMenuIcon: const Icon(Icons.arrow_downward),
                        elevationValue: 1,
                        underline: Container(height: 2,color: Colors.deepPurple,),
                        textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        onChangedFunction: (String? value) {setState(() {dropdownspecsValue = value!;});},
                        containerWidth: 120
                      ),
                      const SizedBox(width: 35),
                      defaultTextField(
                      containerWidth: 200,
                    ),
                  ],
                ),
                const SizedBox(height: 30,),
                Row(children: [const Text("Quantity: \t"), defaultTextField(containerWidth: 100)] ),
                const SizedBox(height: 40,),
                Row(children: [ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.insert_chart), label: const Text("INSERT")),],)
              ],
            ),
          ]),
      ),
    ),
    );
  }
}