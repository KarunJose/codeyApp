import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:codey/registration/confirmation.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _confirmTextController = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: appBgColor,
        body: SafeArea(
          child: SingleChildScrollView(
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
                        controller: _emailTextController,
                        style: TextStyle(color: Colors.grey, fontSize: 16),
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email_outlined,
                              color: Colors.white,
                            ),
                            hintText: 'Enter Your Email',
                            hintStyle:
                                CodeyFont.textStyleRegular(Colors.grey, 15),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
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
                        obscureText: true,
                        controller: _passwordTextController,
                        style: CodeyFont.textStyleRegular(Colors.grey, 15),
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            hintText: 'Enter Password',
                            hintStyle: TextStyle(color: Colors.grey),
                            //errorText: ,
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
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
                        obscureText: true,
                        controller: _confirmTextController,
                        style: CodeyFont.textStyleRegular(Colors.grey, 15),
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock_open,
                              color: Colors.white,
                            ),
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                MaterialButton(
                  height: 60,
                  minWidth: MediaQuery.of(context).size.width * 0.8,
                  color: buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {
                    if (_emailTextController.text.isNotEmpty &&
                        _passwordTextController.text.isNotEmpty &&
                        _confirmTextController.text.isNotEmpty) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConfirmationPage()));
                      final snackBar = SnackBar(
                        backgroundColor: yButtonColor,
                        content: Text(
                          'Sign up Successfully!',
                          style: CodeyFont.textStyleRegular(Colors.white, 16),
                        ),
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      _scaffoldKey.currentState!.showSnackBar(SnackBar(
                        backgroundColor: yButtonColor,
                        content: Text(
                          'Sign up Failed!',
                          style: CodeyFont.textStyleRegular(Colors.white, 16),
                        ),
                      ));
                    }
                  },
                  child: Text(
                    'SIGN UP',
                    style: CodeyFont.textStyleRegular(Colors.white, 15),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'OR SIGN UP WITH',
                  style: CodeyFont.textStyleRegular(Colors.white, 17),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(
                      onPressed: () {},
                      minWidth: MediaQuery.of(context).size.width * 0.4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            topLeft: Radius.circular(30)),
                      ),
                      height: 50,
                      color: yButtonColor,
                      child: Text(
                        'Google',
                        style: CodeyFont.textStyleRegular(Colors.white, 15),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      minWidth: MediaQuery.of(context).size.width * 0.4,
                      height: 50,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(30),
                            topRight: Radius.circular(30)),
                      ),
                      color: buttonColor,
                      child: Text(
                        'Facebook',
                        style: CodeyFont.textStyleRegular(Colors.white, 15),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
