// ignore_for_file: unused_import

import 'package:black_box/utils/appbar.dart';
import 'package:flutter/material.dart';

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: defaultAppBar(appBarTitle: "Library", elevation: 3),
      ),
    );
  }
}