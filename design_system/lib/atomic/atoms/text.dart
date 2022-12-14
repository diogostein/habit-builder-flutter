import 'package:design_system/atomic/tokens/colors.dart';
import 'package:design_system/atomic/tokens/dimensions.dart';
import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBText extends StatelessWidget {
  final String data;
  final TextStyle? style;
  final TextAlign? textAlign;
  final TextOverflow? overflow;

  const HBText(
    this.data, {
    super.key,
    this.style,
    this.textAlign,
    this.overflow,
  });

  factory HBText.headline1(String data, {Key? key, TextAlign? textAlign}) {
    return HBText(
      data.toUpperCase(),
      key: key,
      style: HBTextStyles.headline1,
      textAlign: textAlign ?? TextAlign.center,
    );
  }

  factory HBText.headline2(String data, {Key? key, TextAlign? textAlign}) {
    return HBText(
      data.toUpperCase(),
      key: key,
      style: HBTextStyles.headline2,
      textAlign: textAlign ?? TextAlign.center,
    );
  }

  factory HBText.headline3(String data, {Key? key, TextAlign? textAlign}) {
    return HBText(
      data.toUpperCase(),
      key: key,
      style: HBTextStyles.headline3,
      textAlign: textAlign ?? TextAlign.center,
    );
  }

  factory HBText.headline4(String data, {Key? key, TextAlign? textAlign}) {
    return HBText(
      data.toUpperCase(),
      key: key,
      style: HBTextStyles.headline4,
      textAlign: textAlign ?? TextAlign.center,
    );
  }

  factory HBText.title(
    String data, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
  }) {
    return HBText(
      data,
      key: key,
      style: HBTextStyles.title.copyWith(color: color),
      textAlign: textAlign,
    );
  }

  factory HBText.small(
    String data, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
  }) {
    return HBText(
      data,
      key: key,
      style: HBTextStyles.small.copyWith(color: color),
      textAlign: textAlign,
    );
  }

  factory HBText.caption(
    String data, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
  }) {
    return HBText(
      data,
      key: key,
      style: HBTextStyles.small.copyWith(
        fontSize: HBFontSizes.xSmall,
        color: color,
      ),
      textAlign: textAlign,
    );
  }

  factory HBText.muted(
    String data, {
    Key? key,
    TextAlign? textAlign,
    Color? color,
  }) {
    return HBText(
      data,
      key: key,
      style: HBTextStyles.small.copyWith(
        fontSize: HBFontSizes.xSmall,
        color: color ?? HBMaterialColors.secondarySwatch.withOpacity(.5),
      ),
      textAlign: textAlign,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      key: key,
      style: style ?? HBTextStyles.body,
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
