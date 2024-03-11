// ignore_for_file: unused_import

import 'package:black_box/utils/appbar.dart';
import 'package:flutter/material.dart';

class CorruptionDiscovery extends StatelessWidget {
  const CorruptionDiscovery({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: defaultAppBar(appBarTitle: "Corruption Discovery",  elevation: 3),
      ),
    );
  }
}