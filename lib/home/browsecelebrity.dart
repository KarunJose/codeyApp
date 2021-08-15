import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:codey/home/singlecelebpage.dart';
import 'package:flutter/material.dart';

class BrowseCelebrity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
      appBar: AppBar(
        title: Text(
          'Browse Celebrity',
          style: CodeyFont.textStyleRegular(Colors.black, 18),
        ),
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: TextField(
                        style: TextStyle(decoration: TextDecoration.none),
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.grey[700],
                          ),
                          hintText: 'Search...',
                          hintStyle:
                              CodeyFont.textStyleRegular(Colors.grey, 15),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.17,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset(
                      'images/filter.png',
                      height: 22,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
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
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
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
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
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
      ),
    );
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          SingleCelebPage(),
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
