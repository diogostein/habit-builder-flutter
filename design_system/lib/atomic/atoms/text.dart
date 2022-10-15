import 'package:flutter/material.dart';

import '../tokens/styles.dart';

class HBText extends StatelessWidget {
  final String data;
  final TextStyle? style;
  final TextAlign? textAlign;

  const HBText(
    this.data, {
    super.key,
    this.style,
    this.textAlign,
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

  factory HBText.small(String data, {Key? key, TextAlign? textAlign}) {
    return HBText(
      data,
      key: key,
      style: HBTextStyles.small,
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
    );
  }
}
