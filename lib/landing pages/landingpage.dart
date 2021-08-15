import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:codey/landing%20pages/splash.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'images/logo.png',
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.25,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'SHOP MORE SPEND LESS',
              style: CodeyFont.textStyleRegular(Colors.white, 18.0),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'its all about save the wallet',
              style: CodeyFont.textStyleRegular(Colors.white, 12),
            ),
            SizedBox(
              height: 60,
            ),
            MaterialButton(
              height: 50,
              minWidth: MediaQuery.of(context).size.width * 0.5,
              color: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SplashPage()));
              },
              child: Text(
                'NEXT',
                style: CodeyFont.textStyleRegular(Colors.white, 14),
              ),
            )
          ],
        ),
      ),
    );
  }
}
