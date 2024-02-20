import 'package:black_box/logic/bloc/bloc_observer.dart';
import 'package:black_box/modules/base/register.dart';
import 'package:bloc/bloc.dart';
import 'package:window_manager/window_manager.dart';


import 'package:flutter/material.dart';

void main() async {
  Bloc.observer = const SimpleBlocObserver();
  blocMain();

  WidgetsFlutterBinding.ensureInitialized();
  await WindowManager.instance.setResizable(false);

  // setting min and max with the same size to prevent resizing
  //await DesktopWindow.setMinWindowSize(const Size(640,480));
  //await DesktopWindow.setMaxWindowSize(const Size(640,480));

  await WindowManager.instance.setMinimumSize(const Size(200,  200)); // Minimum size
  await WindowManager.instance.setMaximumSize(const Size(800,  800)); // Maximum size

  runApp(const MainApp());
}

class MainApp extends StatelessWidget
{
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: SignupScreen(),
      debugShowCheckedModeBanner: false,
    );
  }

}
