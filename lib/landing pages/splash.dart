import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:codey/landing%20pages/splash2.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SplashTwo()));
                  },
                  child: Image.asset(
                    'images/splash.jpg',
                  ),
                ),
                // Positioned(
                //   right: 90,
                //   bottom: 50,
                //   child: MaterialButton(
                //     height: 50,
                //     minWidth: MediaQuery.of(context).size.width * 0.5,
                //     color: buttonColor,
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(30),
                //     ),
                //     onPressed: () {
                //       Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //               builder: (context) => SplashTwo()));
                //     },
                //     child: Text(
                //       'NEXT',
                //       style: CodeyFont.textStyleRegular(Colors.white, 14),
                //     ),
                //   ),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
