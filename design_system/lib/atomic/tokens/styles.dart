import 'package:flutter/material.dart';

import 'colors.dart';
import 'dimensions.dart';

abstract class HBTextStyles {
  static const _parent = TextStyle(
    package: 'design_system',
    fontFamily: 'Manrope',
    fontSize: HBFontSizes.regular,
    color: HBMaterialColors.secondarySwatch,
  );

  static final headline1 = _parent.copyWith(
    debugLabel: 'Headline1',
    fontFamily: 'Klasik',
    fontSize: HBFontSizes.headline1,
    height: 1.1,
    fontWeight: FontWeight.w400,
  );

  static final headline2 = _parent.copyWith(
    debugLabel: 'Headline2',
    fontFamily: 'Klasik',
    fontSize: HBFontSizes.headline2,
    fontWeight: FontWeight.w400,
  );

  static final body = _parent.copyWith(
    debugLabel: 'Body',
    fontWeight: FontWeight.w500,
  );

  static final link = _parent.copyWith(
    debugLabel: 'Link',
    fontWeight: FontWeight.w500,
    fontSize: HBFontSizes.small,
    decoration: TextDecoration.underline,
  );

  static final textFormField = _parent.copyWith(
    debugLabel: 'Text Form Field',
    color: HBMaterialColors.primarySwatch,
    fontWeight: FontWeight.bold,
  );

  static final hintTextFormField = _parent.copyWith(
    debugLabel: 'Hint Text Form Field',
    color: HBMaterialColors.secondarySwatch.withOpacity(.4),
    fontWeight: FontWeight.w500,
  );
}

abstract class HBButtonStyles {
  static final primaryButton = ElevatedButton.styleFrom(
    primary: HBMaterialColors.primarySwatch,
    onPrimary: HBMaterialColors.secondarySwatch,
    textStyle: HBTextStyles.body.copyWith(fontWeight: FontWeight.bold),
    elevation: 0,
    minimumSize: const Size(0, 56),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(HBRadius.button),
    ),
  );

  static final socialButton = ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: HBMaterialColors.secondarySwatch,
    textStyle: HBTextStyles.body.copyWith(fontWeight: FontWeight.bold),
    elevation: 0,
    minimumSize: const Size(0, 48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(HBRadius.socialButton),
    ),
  );

  static final textButton = TextButton.styleFrom(
    primary: HBMaterialColors.secondarySwatch,
    textStyle: HBTextStyles.body.copyWith(fontWeight: FontWeight.bold),
    minimumSize: const Size(0, 48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(HBRadius.button),
    ),
  );

  static final linkButton = TextButton.styleFrom(
    primary: HBMaterialColors.secondarySwatch,
    textStyle: HBTextStyles.link,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(HBRadius.button),
    ),
  );
}
