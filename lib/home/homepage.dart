import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:codey/home/bannerimages.dart';
import 'package:codey/home/caraouselimage.dart';
import 'package:codey/home/celebcategory.dart';
import 'package:codey/home/singlecelebpage.dart';
import 'package:codey/home/specialoffers.dart';
import 'package:codey/profile/profile.dart';
import 'package:codey/widgets/bottomnavigation.dart';
import 'package:codey/widgets/drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _menuKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _menuKey,
      backgroundColor: appBarColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => _menuKey.currentState!.openDrawer(),
          icon: Image.asset(
            'images/menu.png',
            height: 35,
          ),
        ),
        actions: [
          IconButton(
            icon: Image.asset(
              'images/bell.png',
              height: 40,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(
              'images/profile.png',
              height: 40,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
        ],
      ),
      drawer: DrawerPage(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Browse offers',
                      style: CodeyFont.textStyleRegular(Colors.black, 18),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.06,
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
                                  size: 20,
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
                        height: MediaQuery.of(context).size.height * 0.06,
                        width: MediaQuery.of(context).size.width * 0.16,
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
                            height: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CarouselImage(),
                  SizedBox(
                    height: 25,
                  ),
                  CelebCategory(),
                  SizedBox(
                    height: 25,
                  ),
                  SpecialOffers(),
                  BannerImage(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
