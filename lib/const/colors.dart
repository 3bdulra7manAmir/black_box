// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';


// Utilites Class
class Specs {
  Color cBlue_200 = (Colors.blue[200])!;
  Color cBlue_300 = (Colors.blue[300])!;
  Color cBlue_400 = (Colors.blue[400])!;

  Color cYellow_200 = (Colors.yellow[200])!;
  Color cYellow_300 = (Colors.yellow[300])!;
  Color cYellow_400 = (Colors.yellow[400])!;

  Color cOrange_200 = (Colors.orange[200])!;
  Color cOrange_300 = (Colors.orange[300])!;
  Color cOrange_400 = (Colors.orange[400])!;

  Color cGray_200 = (Colors.grey[200])!;
  Color cGray_300 = (Colors.grey[300])!;
  Color cGray_400 = (Colors.grey[400])!;

  Color cCyanRGB = const Color.fromARGB(255, 55, 140, 150);

  double btnWidth_150 = 150.0;
  double btnWidth_250 = 250.0;
  double btnWidth_350 = 350.0;

  double btnHeight_30 = 30.0;
  double btnHeight_40 = 40.0;
  double btnHeight_50 = 50.0;

  Icon icon = const Icon(Icons.access_alarm);
  // Icon icon_ = const Icon(Icons.);
  // Icon icon_ = const Icon(Icons.);
  // Icon icon_ = const Icon(Icons.);

}


class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}


//=======================================================================
//Not Prefred TAble - BACKup Table

// Table(
//                   border: TableBorder.all(color: Colors.black),
//                   children: const [
//                     TableRow(children: [
//                       Text('Cell 1'),
//                       Text('Cell 2'),
//                       Text('Cell 3'),
//                     ]),
//                     TableRow(children: [
//                       Text('Cell 4'),
//                       Text('Cell 5'),
//                       Text('Cell 6'),
//                     ]),
//                     TableRow(children: [
//                       Text('Cell 7'),
//                       Text('Cell 8'),
//                       Text('Cell 9'),
//                     ]),
//                   ],
//                 ),
//=======================================================================