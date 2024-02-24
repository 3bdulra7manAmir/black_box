// ignore_for_file: avoid_print

import 'package:black_box/const/colors.dart';
import 'package:black_box/const/popup_menu_item.dart';
import 'package:black_box/modules/home/home.dart';
import 'package:black_box/modules/splash/welcome.dart';
import 'package:popover/popover.dart';
import 'package:flutter/material.dart';

Widget defaultDrawer(BuildContext context){
  return SafeArea(
      child: Drawer(
    // Add a ListView to the drawer. This ensures the user can scroll
    // through the options in the drawer if there isn't enough vertical
    // space to fit everything.
    child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/cod.jpg"), fit: BoxFit.cover //BACKground IMAGE of the user Profile.
                  ),
            ),
            accountName: Text("Shadow Company",
                style: TextStyle(
                  color: Specs().cGray_200,
                  fontWeight: FontWeight.bold
                )),
            currentAccountPictureSize: const Size.square(99),
            currentAccountPicture: const CircleAvatar(
                radius: 55,
                backgroundImage: AssetImage("assets/images/sc_assault.jpg") //USER Profile IMAGE.
                ),
                accountEmail: null,
          ),
          ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Home()),);
              }),
          ListTile(
              title: const Text("Dark mode"),
              leading: const Icon(Icons.dark_mode),
              onTap: () {}),
          ListTile(
              title: const Text("About"),
              leading: const Icon(Icons.campaign),
              onTap: () {
                showPopover(context: context, bodyBuilder: (context) => const ItemsMenu(),
                width: 250,
                height: 150,
              );
              }),
          ListTile(
              title: const Text("Logut"),
              leading: const Icon(Icons.logout),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Welcome()),);
              }),
          Container(
            margin: const EdgeInsets.only(bottom: 12, left: 17),
            child: const Text("Shadow® 2024",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          )
        ]),
  ));
}
