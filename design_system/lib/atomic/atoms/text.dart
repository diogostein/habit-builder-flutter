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
      textAlign: textAlign,
    );
  }

  factory HBText.headline2(String data, {Key? key, TextAlign? textAlign}) {
    return HBText(
      data.toUpperCase(),
      key: key,
      style: HBTextStyles.headline2,
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
