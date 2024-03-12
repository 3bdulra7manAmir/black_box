import 'package:black_box/const/const.dart';
import 'package:black_box/utils/appbar.dart';
import 'package:black_box/utils/drawer.dart';
import 'package:flutter/material.dart';

class AdminDashboard extends StatefulWidget {
  const AdminDashboard({super.key});

  @override
  State<AdminDashboard> createState() => _AdminDashboardState();
}

List<String> dropDownMenuList = <String>
[
  'احصاء طلبة',
  'احصاء عاملين',
  'احصاء مدارس',
  'عجز وزيادة مدارس'
];

class _AdminDashboardState extends State<AdminDashboard> {

String dropdownValue = dropDownMenuList.first;

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
                      DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: dropDownMenuList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    ),
                      ElevatedButton.icon(onPressed: (){}, icon: const Icon(Icons.insert_chart), label: const Text("INSERT")),
                      const SizedBox( height: 25,),
                ],
              ),
            ],
          ),
        ]
        ),
      ),
    ),
    );
  }
}