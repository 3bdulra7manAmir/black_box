// ignore_for_file: unused_import

import 'dart:io';

import 'package:black_box/models/database/db.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class DBinit
{

//Isar Database Opject Creation - so we could use an instance of the DataBase.
static late Isar isar;

// I N I T A L I Z E - C R E A T - D A T A B A S E.
static Future<void> initalizeDataBase() async {

  // GET THE PATH DIR FOR WHERE ALL OF THIS IS GONNA BE SAVED!.
  final dir = await getApplicationDocumentsDirectory();
              //Table Name or Schema...     //Current PATH...
  isar = await Isar.open([ItemsSchema], directory: dir.path);

}

// Future<Isar> openDB() async {
//     if (Isar.instanceNames.isEmpty) {
//       Directory dir = await getApplicationDocumentsDirectory();
//       return await Isar.open([ItemsSchema], directory: dir.path);
//     }
//     return Future.value(Isar.getInstance());
//   }

}