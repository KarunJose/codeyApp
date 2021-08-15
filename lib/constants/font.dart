import 'package:flutter/material.dart';

class CodeyFont {
  static TextStyle textStyleRegular(Color color, double size) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.w200,
        fontFamily: "Montserrat",
        fontStyle: FontStyle.normal,
        fontSize: size);
  }

  static TextStyle textStyleBold(Color color, double size) {
    return TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontFamily: "Montserrat",
        fontStyle: FontStyle.normal,
        fontSize: size);
  }
}
