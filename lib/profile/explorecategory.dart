import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:flutter/material.dart';

class ExploreCategory extends StatelessWidget {
  const ExploreCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('Explore Categories',
                  style: CodeyFont.textStyleRegular(Colors.black, 18)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                'View All',
                style: CodeyFont.textStyleRegular(yButtonColor, 18),
              ),
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width * 0.34,
                  decoration: BoxDecoration(
                      color: appBgColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'images/food.png',
                        height: 50,
                      ),
                      Text(
                        'Food',
                        style: CodeyFont.textStyleRegular(Colors.white, 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width * 0.34,
                  decoration: BoxDecoration(
                      color: appBgColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'images/fashion.png',
                        height: 50,
                      ),
                      Text(
                        'Fashion',
                        style: CodeyFont.textStyleRegular(Colors.white, 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width * 0.34,
                  decoration: BoxDecoration(
                      color: appBgColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'images/footwear.png',
                        height: 50,
                      ),
                      Text(
                        'Footwear',
                        style: CodeyFont.textStyleRegular(Colors.white, 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.16,
                  width: MediaQuery.of(context).size.width * 0.34,
                  decoration: BoxDecoration(
                      color: appBgColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        'images/jewellry.png',
                        height: 50,
                      ),
                      Text(
                        'Jewellery',
                        style: CodeyFont.textStyleRegular(Colors.white, 15),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
