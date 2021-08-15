import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.95,
      child: Image.asset(
        'images/banner.png',
      ),
    );
  }
}
