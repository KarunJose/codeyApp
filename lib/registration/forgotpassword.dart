import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:codey/registration/passwordreset.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
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
              height: 40,
            ),
            Text(
              'Forgot Password?',
              style: CodeyFont.textStyleRegular(Colors.white, 26),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '   Enter the email address' +
                  '\n' +
                  'associated with your account',
              style: CodeyFont.textStyleRegular(Colors.white, 15),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.085,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(28),
                color: textFieldColor,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                    decoration: InputDecoration(
                        icon: Icon(
                          Icons.email_outlined,
                          color: Colors.white,
                        ),
                        hintText: 'Enter Your Email',
                        hintStyle: CodeyFont.textStyleRegular(Colors.grey, 15),
                        border: InputBorder.none),
                  ),
                ),
              ),
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
                    MaterialPageRoute(builder: (context) => PasswordReset()));
              },
              child: Text(
                'RESET PASSWORD',
                style: CodeyFont.textStyleRegular(Colors.white, 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
