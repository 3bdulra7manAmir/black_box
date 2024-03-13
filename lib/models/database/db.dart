// ignore_for_file: unused_import

import 'package:isar/isar.dart';

part 'db.g.dart';

@Collection()
class Items
{
Id id = Isar.autoIncrement;

String? type;
String? brand;
String? color;
String? serialNumber;
String? destnation;

}