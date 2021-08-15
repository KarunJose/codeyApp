import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:codey/registration/forgotpassword.dart';
import 'package:codey/registration/login.dart';
import 'package:codey/registration/signup.dart';
import 'package:flutter/material.dart';

class ConfirmationPage extends StatefulWidget {
  @override
  _ConfirmationPageState createState() => _ConfirmationPageState();
}

class _ConfirmationPageState extends State<ConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Center(
                child: Image.asset(
                  'images/logo.png',
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  MaterialButton(
                    height: 60,
                    minWidth: MediaQuery.of(context).size.width * 0.7,
                    color: buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    },
                    child: Text(
                      'Have an account? Sign in',
                      style: CodeyFont.textStyleRegular(Colors.white, 15),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MaterialButton(
                    height: 60,
                    minWidth: MediaQuery.of(context).size.width * 0.7,
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    },
                    child: Text(
                      'Sign Up',
                      style: CodeyFont.textStyleRegular(Colors.black, 15),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPassword()));
                    },
                    child: Text(
                      'Forgot Password?',
                      style: CodeyFont.textStyleRegular(Colors.white, 15),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
