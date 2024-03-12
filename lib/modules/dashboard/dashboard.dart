import 'package:black_box/const/const.dart';
import 'package:black_box/utils/appbar.dart';
import 'package:black_box/utils/drawer.dart';
import 'package:black_box/utils/dropdownmenu.dart';
import 'package:black_box/utils/textfield.dart';
import 'package:flutter/material.dart';


List<String> itemsList = <String>['Mouse', 'Keyboard', 'Power Cable', 'VGA Cable', 'HDMI Cable', 'Neon Lamb', 'CRT Screen', 'Case', 'Ethernet'];
List<String> specsList = <String>['Black', 'White', 'Blue', 'Red'];
List<String> brandList = <String>['Microsoft','Hp', 'DELL', 'Fujitsu', 'XO', 'WOLF', 'Tiger', 'Icon', 'MediaTech'];
List<String> destnationList = <String>['Library', 'Corruption Discovery'];

String dropdownitemsValue = itemsList.first;
String dropdownspecsValue = specsList.first;
String dropdownbrandValue = brandList.first;
String dropdowndestnationValue = destnationList.first;

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {

String dropdownitemsValue = itemsList.first; // Initialize dropdownValue here
String dropdownspecsValue = specsList.first; // Initialize dropdownValue here
String dropdownbrandValue = brandList.first; // Initialize dropdownValue here
String dropdowndestnationValue = destnationList.first; // Initialize dropdownValue here

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
                    const Text("Item:"),
                    const SizedBox(width: 30,),
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
                    const SizedBox(width: 50,),

                    const Text("Brand:"),
                    const SizedBox(width: 30,),
                    defultDropDownMenu(
                        wordsList: brandList,
                        dropdownValueDefultValue: dropdownbrandValue,
                        dropDownMenuIcon: const Icon(Icons.arrow_downward),
                        elevationValue: 1,
                        underline: Container(height: 2,color: Colors.deepPurple,),
                        textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        onChangedFunction: (String? value) {setState(() {dropdownbrandValue = value!;});},
                        containerWidth: 100
                      ),
                    const SizedBox(width: 50,),

                    const Text("Color:"),
                    const SizedBox(width: 30,),
                    defultDropDownMenu(
                        wordsList: specsList,
                        dropdownValueDefultValue: dropdownspecsValue,
                        dropDownMenuIcon: const Icon(Icons.arrow_downward),
                        elevationValue: 1,
                        underline: Container(height: 2,color: Colors.deepPurple,),
                        textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                        onChangedFunction: (String? value) {setState(() {dropdownspecsValue = value!;});},
                        containerWidth: 70
                      ),
                  ],
                ),
                const SizedBox(height: 30,),
                Row(
                  children: [
                    const Text("Destnation:"),
                    const SizedBox(width: 30,),
                defultDropDownMenu(
                  dropdownValueDefultValue: dropdowndestnationValue,
                  dropDownMenuIcon: const Icon(Icons.arrow_downward),
                  onChangedFunction: (String? value) {setState(() {dropdowndestnationValue = value!;});},
                  elevationValue: 1,
                  wordsList: destnationList,
                  underline: Container(height: 2,color: Colors.deepPurple,),
                  textStyle: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                  containerWidth: 165,
                ),
                const SizedBox(width: 80,),
                const Text("Quantity:"), defaultTextField(containerWidth: 100, inputType: TextInputType.number),
                const SizedBox(width: 80,),
                ElevatedButton.icon(onPressed: () {}, icon: const Icon(Icons.insert_chart), label: const Text("INSERT")),
          ]
        ),
      ],
          ),
          ]),
      ),
    ),
    );
  }
}