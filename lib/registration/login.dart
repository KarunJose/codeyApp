import 'dart:ui';

import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:codey/home/homepage.dart';
import 'package:codey/registration/location.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.asset(
                      'images/icon.png',
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.3,
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
                            controller: _userNameController,
                            style: CodeyFont.textStyleRegular(Colors.grey, 15),
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                                hintText: 'Username or Email',
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
                            controller: _passwordController,
                            obscureText: true,
                            style: CodeyFont.textStyleRegular(Colors.grey, 15),
                            decoration: InputDecoration(
                                icon: Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                ),
                                hintText: 'Enter Password',
                                hintStyle:
                                    CodeyFont.textStyleRegular(Colors.grey, 15),
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
                        if (_userNameController.text.isNotEmpty &&
                            _passwordController.text.isNotEmpty) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LocationPage()));
                          final snackBar = SnackBar(
                            backgroundColor: yButtonColor,
                            content: Text(
                              'Logged in Successfully!',
                              style:
                                  CodeyFont.textStyleRegular(Colors.white, 16),
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else {
                          final snackBar = SnackBar(
                            backgroundColor: yButtonColor,
                            content: Text(
                              'Login Failed!',
                              style:
                                  CodeyFont.textStyleRegular(Colors.white, 16),
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                      child: Text(
                        'LOGIN',
                        style: CodeyFont.textStyleRegular(Colors.white, 15),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'OR LOGIN WITH',
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
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
