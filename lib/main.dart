import 'package:black_box/logic/bloc/bloc_observer.dart';
import 'package:black_box/modules/base/welcome.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = const SimpleBlocObserver();
  blocMain();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget
{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Welcome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
