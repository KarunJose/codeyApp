import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:flutter/material.dart';

class SpecialOffers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Special Offers',
                style: CodeyFont.textStyleRegular(Colors.black, 16),
              ),
              Text(
                'View all',
                style: CodeyFont.textStyleRegular(yButtonColor, 16),
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
                Image.asset(
                  'images/chicken.png',
                  height: 200,
                  //width: 200,
                ),
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'images/chicken.png',
                  height: 200,
                  //width: 100,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
