import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:codey/registration/confirmation.dart';
import 'package:codey/registration/login.dart';
import 'package:flutter/material.dart';

class PasswordReset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'images/icon.png',
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.3,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              '  Your password was' + '\n' + 'successfully changed',
              style: CodeyFont.textStyleRegular(Colors.white, 22),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'Close this window and login again',
              style: CodeyFont.textStyleRegular(Colors.white, 15),
            ),
            SizedBox(
              height: 50,
            ),
            MaterialButton(
              height: 60,
              minWidth: MediaQuery.of(context).size.width * 0.8,
              color: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text(
                'LOGIN AGAIN',
                style: CodeyFont.textStyleRegular(Colors.white, 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
