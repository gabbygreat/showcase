import 'package:flutter/material.dart';

class AppColor {
  static Map<Color, Color> get contrast {
    return {
      orange: blue,
      white: black,
      black: white,
      grey: darkGrey,
    };
  }

  static Color contrastColor(Color color) {
    assert(
      contrast.containsKey(color),
      'You have not provided any dark theme',
    );
    return contrast[color]!;
  }

  static Color orange = const Color(0xFFFC7100);
  static Color blue = const Color(0xFF13A9F4);
  static Color white = const Color(0xFFFFFFFF);
  static Color black = const Color(0xFF000000);
  static Color grey = const Color(0xFF707070);
  static Color darkGrey = const Color(0xFF707070);
}
