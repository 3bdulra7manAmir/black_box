import 'package:black_box/modules/base/login.dart';
import 'package:tbib_splash_screen/splash_screen_view.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  final bool isLoaded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreenView(
        navigateWhere: isLoaded,
        navigateRoute: const Login(),
        backgroundColor: Colors.black,
        duration: const Duration(seconds: 16),

      text: WavyAnimatedText("Welcome To The Black Box Project...",
        textStyle: const TextStyle(
        color: Colors.red,
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),
    ),

        imageSrc: "assets/logo_light.png",
      ),

    );
  }
}


// class Welcome extends StatelessWidget {
//   const Welcome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: AnimatedSplashScreen(
//             duration: 1000,
//             splash: Icons.home,
//             nextScreen: const Login(),
//             splashTransition: SplashTransition.fadeTransition,
//             pageTransitionType: PageTransitionType.scale,
//             backgroundColor: Colors.blue));
//   }
// }

