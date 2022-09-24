import 'package:flutter/material.dart';

abstract class HBColors {
  static const morning = Color(0xFFFFBA7C);
  static const eclipse = Color(0xFF573353);
  static const fog = Color(0xFFFFDEEF);
  static const twilight = Color(0xFF29319F);
  static const sunset = Color(0xFFF65B4E);

  static const background = Color(0xFFFFF3E9);
}

abstract class HBMaterialColors {
  static const primarySwatch = MaterialColor(0xFFfda758, {
    50: Color(0xFFfed3ac),
    100: Color(0xFFfeca9b),
    200: Color(0xFFfec18a),
    300: Color(0xFFfdb069),
    400: Color(0xFFfdb069),
    500: Color(0xFFfda758),
    600: Color(0xFFe4964f),
    700: Color(0xFFca8646),
    800: Color(0xFFb1753e),
    900: Color(0xFF986435),
  });

  static const secondarySwatch = MaterialColor(0xFF573353, {
    50: Color(0xFFab99a9),
    100: Color(0xFF9a8598),
    200: Color(0xFF897087),
    300: Color(0xFF795c75),
    400: Color(0xFF684764),
    500: Color(0xFF573353),
    600: Color(0xFF4e2e4b),
    700: Color(0xFF462942),
    800: Color(0xFF3d243a),
    900: Color(0xFF341f32),
  });
}
