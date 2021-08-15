import 'package:codey/constants/font.dart';
import 'package:flutter/material.dart';

class ProfileSecondPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.11,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          left: 0.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '125',
                  style: CodeyFont.textStyleRegular(Colors.white, 15),
                ),
                Text(
                  'Shops',
                  style: CodeyFont.textStyleRegular(Colors.white, 15),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '1205',
                  style: CodeyFont.textStyleRegular(Colors.white, 15),
                ),
                Text(
                  'Codes',
                  style: CodeyFont.textStyleRegular(Colors.white, 15),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '05',
                  style: CodeyFont.textStyleRegular(Colors.white, 15),
                ),
                Text(
                  'Category',
                  style: CodeyFont.textStyleRegular(Colors.white, 15),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
