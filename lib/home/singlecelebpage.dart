import 'package:codey/constants/font.dart';
import 'package:codey/home/allshops.dart';
import 'package:codey/home/bannerimages.dart';
import 'package:codey/profile/allshops.dart';
import 'package:codey/profile/explorecategory.dart';
import 'package:codey/profile/profile1.dart';
import 'package:codey/widgets/bottomnavigation.dart';
import 'package:flutter/material.dart';

class SingleCelebPage extends StatefulWidget {
  @override
  _SingleCelebPageState createState() => _SingleCelebPageState();
}

class _SingleCelebPageState extends State<SingleCelebPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  color: Colors.black,
                  child: Image.asset(
                    'images/profileimage.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 40,
                  left: 10,
                  child: Row(
                    children: [
                      Text(
                        'Celebrity Name',
                        style: CodeyFont.textStyleRegular(Colors.white, 21),
                      ),
                      Image.asset(
                        'images/heart.png',
                        height: 40,
                      )
                    ],
                  ),
                ),
                // Positioned(
                //   bottom: 40,
                //   left: 15,
                //   child: Image.asset('images/heart.png'),
                // ),
                IconButton(
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
              ]),
              ProfileSecondPart(),
              BannerImage(),
              ExploreCategory(),
              SizedBox(
                height: 10,
              ),
              HomeAllShops()
            ],
          ),
        ),
      ),
      //bottomNavigationBar: BottomNavigation(),
    );
  }
}
