
import 'dart:typed_data';

import 'package:isar/isar.dart';

part 'db.g.dart';

@Collection()      //@Collection mean Creating a Table
class Storage       //Table name is the same as class name then table name is Items.
{
  Id id = Isar.autoIncrement;     //ID Column
  //int idint = Isar.autoIncrement; //ID Column
  String? itemType;               //Type Column
  String? brand;                  //Brand Column
  String? color;                  //Color Column
  String? serialNumber;           //SN Column
  String? destnation;             //Dest Column
  @ignore Uint8List? barcodePng;   // To store the barcode as PNG binary data
  List<int>? barcodePNG;          // Use List<int> to store PNG data
  String? svgData;                // Store SVG as a String
}

@Collection()
class Control
{
  Id id = Isar.autoIncrement; //ID Column
  //int idint = Isar.autoIncrement; //ID Column
  String? userName;            //User Column
  String? passWord;              //Password Column
  int? role;               //User Permissions Role
}


@Collection()
class Watcher
{
  Id id = Isar.autoIncrement; //ID Column
  int idint = Isar.autoIncrement; //ID Column
  String? systemLog;      //User System Log
}