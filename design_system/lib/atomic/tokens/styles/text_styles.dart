import 'package:flutter/material.dart';

import '../colors.dart';
import '../dimensions.dart';

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
    fontWeight: FontWeight.w400,
  );

  static final headline2 = _parent.copyWith(
    debugLabel: 'Headline2',
    fontFamily: 'Klasik',
    fontSize: HBFontSizes.headline2,
    fontWeight: FontWeight.w400,
  );

  static final headline3 = _parent.copyWith(
    debugLabel: 'Headline3',
    fontFamily: 'Klasik',
    fontSize: HBFontSizes.headline3,
    fontWeight: FontWeight.w400,
  );

  static final headline4 = _parent.copyWith(
    debugLabel: 'Headline4',
    fontFamily: 'Klasik',
    fontSize: HBFontSizes.headline4,
    fontWeight: FontWeight.w400,
  );

  static final body = _parent.copyWith(
    debugLabel: 'Body',
    fontWeight: FontWeight.w500,
  );

  static final small = _parent.copyWith(
    debugLabel: 'Small',
    fontWeight: FontWeight.w500,
    fontSize: HBFontSizes.small,
  );

  static final title = _parent.copyWith(
    debugLabel: 'Title',
    fontWeight: FontWeight.w700,
    fontSize: HBFontSizes.large,
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

  static final errorTextFormField = _parent.copyWith(
    debugLabel: 'Error Text Form Field',
    color: HBColors.sunset,
    fontWeight: FontWeight.w500,
    fontSize: HBFontSizes.xSmall,
  );
}


