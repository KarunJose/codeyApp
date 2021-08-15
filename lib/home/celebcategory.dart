import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:codey/home/browsecelebrity.dart';
import 'package:codey/home/singlecelebpage.dart';
import 'package:flutter/material.dart';

class CelebCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mens Celebrities',
                  style: CodeyFont.textStyleRegular(Colors.black, 16),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, _createRoute());
                  },
                  child: Text(
                    'View all',
                    style: CodeyFont.textStyleRegular(yButtonColor, 16),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, _createRoute());
                    },
                    child: Image.asset(
                      'images/men.png',
                      height: 140,
                      //width: 100,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, _createRoute());
                    },
                    child: Image.asset(
                      'images/women.png',
                      height: 140,
                      //width: 135,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, _createRoute());
                    },
                    child: Image.asset(
                      'images/men.png',
                      height: 140,
                      //width: 100,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Women Celebrities',
                  style: CodeyFont.textStyleRegular(Colors.black, 16),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, _createRoute());
                  },
                  child: Text(
                    'View all',
                    style: CodeyFont.textStyleRegular(yButtonColor, 16),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, _createRoute());
                    },
                    child: Image.asset(
                      'images/men.png',
                      height: 140,
                      //width: 100,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, _createRoute());
                    },
                    child: Image.asset(
                      'images/women.png',
                      height: 140,
                      //width: 135,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, _createRoute());
                    },
                    child: Image.asset(
                      'images/men.png',
                      height: 140,
                      //width: 100,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          BrowseCelebrity(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(1.0, 1.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }
}
