import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimensions.dart';

abstract class HBTextStyles {
  static const _parent = TextStyle(
    package: 'design_system',
    fontFamily: 'Manrope',
    color: HBMaterialColors.secondarySwatch,
  );

  static final headline1 = _parent.copyWith(
    debugLabel: 'Headline1',
    fontFamily: 'Klasik',
    fontSize: 40,
    height: 1.1,
    fontWeight: FontWeight.w400,
  );

  static final headline2 = _parent.copyWith(
    debugLabel: 'Headline2',
    fontFamily: 'Klasik',
    fontSize: 32,
    fontWeight: FontWeight.w400,
  );

  static final body = _parent.copyWith(
    debugLabel: 'Body',
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}

abstract class HBButtonStyles {
  static final primaryButton = ElevatedButton.styleFrom(
    primary: HBMaterialColors.primarySwatch,
    textStyle: HBTextStyles.body.copyWith(fontWeight: FontWeight.bold),
    elevation: 0,
    minimumSize: const Size(0, 48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(HBBorderRadius.button),
    ),
  );

  static final socialButton = ElevatedButton.styleFrom(
    primary: Colors.white,
    textStyle: HBTextStyles.body.copyWith(fontWeight: FontWeight.bold),
    elevation: 0,
    minimumSize: const Size(0, 48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(HBBorderRadius.socialButton),
    ),
  );

  static final textButton = TextButton.styleFrom(
    primary: HBMaterialColors.secondarySwatch,
    textStyle: HBTextStyles.body.copyWith(fontWeight: FontWeight.bold),
    minimumSize: const Size(0, 48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(HBBorderRadius.button),
    ),
  );
}
