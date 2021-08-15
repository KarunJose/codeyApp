import 'package:flutter/material.dart';

class CarouselImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.only(left: 25),
      height: MediaQuery.of(context).size.height * 0.33,
      width: MediaQuery.of(context).size.width * 0.90,
      child: Image.asset(
        'images/caraousel.png',
      ),
    );
  }
}
