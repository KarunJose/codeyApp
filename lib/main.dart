import 'package:codey/constants/colors.dart';
import 'package:codey/landing%20pages/landingpage.dart';
import 'package:codey/landing%20pages/splash.dart';
import 'package:codey/registration/confirmation.dart';
import 'package:codey/widgets/bottomnavigation.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
//import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Codey',
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        duration: 3000,
        splash: Image.asset(
          'images/logo.png',
        ),
        splashTransition: SplashTransition.rotationTransition,
        //pageTransitionType: PageTransitionType.scale,
        nextScreen: SplashPage(),
        backgroundColor: appBgColor,
        splashIconSize: 120,
      ),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => LandingPage(),
      // },
    );
  }
}
