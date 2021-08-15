import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:codey/registration/confirmation.dart';
import 'package:flutter/material.dart';

class SplashTwo extends StatefulWidget {
  @override
  _SplashTwoState createState() => _SplashTwoState();
}

class _SplashTwoState extends State<SplashTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appBgColor,
        body: SafeArea(
          child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ConfirmationPage()));
            },
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'images/profile.png',
                        height: 150,
                        width: 120,
                      ),
                      Text(
                        'Vlogger Name',
                        style: CodeyFont.textStyleRegular(Colors.white, 18),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Category',
                        style: CodeyFont.textStyleRegular(Colors.white, 15),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            'images/coupon.png',
                            height: 90,
                            width: 130,
                          ),
                          Positioned(
                            top: 20,
                            right: 45,
                            child: Text(
                              '72%' + '\n' + 'OFF',
                              textAlign: TextAlign.center,
                              style:
                                  CodeyFont.textStyleRegular(Colors.white, 20),
                            ),
                          )
                        ],
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            'images/coupon-2.png',
                            height: 90,
                            width: 140,
                          ),
                          Positioned(
                            top: 38,
                            right: 40,
                            child: Text(
                              'COUPON',
                              style:
                                  CodeyFont.textStyleRegular(Colors.white, 13),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Make sure, I am the best',
                        style: CodeyFont.textStyleRegular(Colors.white, 25),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'A service that lists all the latest stores',
                        style: CodeyFont.textStyleRegular(Colors.white, 15),
                      ),
                      Text(
                        'discounts & online shopping',
                        style: CodeyFont.textStyleRegular(Colors.white, 15),
                      ),
                      Text(
                        'coupon codes by your favorite',
                        style: CodeyFont.textStyleRegular(Colors.white, 15),
                      ),
                      Text(
                        'celebrities',
                        style: CodeyFont.textStyleRegular(Colors.white, 15),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      // MaterialButton(
                      //   height: 50,
                      //   minWidth: MediaQuery.of(context).size.width * 0.5,
                      //   color: buttonColor,
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(30),
                      //   ),
                      //   onPressed: () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder: (context) => ConfirmationPage()));
                      //   },
                      //   child: Text(
                      //     'NEXT',
                      //     style: CodeyFont.textStyleRegular(Colors.white, 14),
                      //   ),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
