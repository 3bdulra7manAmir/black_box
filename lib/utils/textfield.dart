import 'package:flutter/material.dart';

Widget defaultTextField({
  String hintText = "",
  IconData? prefixIcon,
  IconData? suffixIcon,
  double? containerWidth,
  TextInputType? inputType,
  TextEditingController? textController,

}) =>

SizedBox(
  width: containerWidth,
  //height: ,
  
  child: TextField(
    keyboardType: inputType,
    controller: textController,
    maxLines: 1,
    //expands: true,
  ),
);