import 'package:black_box/modules/base/login.dart';
import 'package:tbib_splash_screen/splash_screen_view.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  final bool isLoaded = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover
          ),
        ),
        width: double.infinity,
        height: double.infinity,
      child: SplashScreenView(
      navigateWhere: isLoaded,
      navigateRoute: const LoginScreen(),
      //backgroundColor: Colors.white,
      duration: const Duration(seconds: 7),
      imageSrc: "assets/images/black_box_2.png",

      text: WavyAnimatedText("Welcome To The Black Box...",
        textStyle: const TextStyle(
        color: Colors.black,
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
                ),
          ),
        ),
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

