import 'package:flutter/material.dart';

Widget defaultTextField({
  String hintText = "",
  Widget? prefixIcon,
  Color? prefixIconColor,
  Widget? suffixIcon,
  Color? suffixIconColor,
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
    decoration: InputDecoration(
      border: const OutlineInputBorder(),
      suffixIcon: suffixIcon,
      suffixIconColor: prefixIconColor,
      prefixIcon: prefixIcon,
      prefixIconColor: prefixIconColor,
    ),
    //expands: true,
  ),
);