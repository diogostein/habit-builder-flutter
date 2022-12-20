import 'dart:math';

import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBCircularProgressBar extends StatelessWidget {
  final double percentValue;
  final int maxValue;
  final double size;
  final String? captionText;

  const HBCircularProgressBar({
    Key? key,
    required this.percentValue,
    required this.maxValue,
    this.captionText,
    this.size = 42,
  }) : super(key: key);

  double get _minPercentValue => min(percentValue.abs(), 1);

  int get _centeredValue => (_minPercentValue * maxValue).toInt();

  Color get _color {
    if (_minPercentValue == 0) {
      return Colors.redAccent;
    } else if (_minPercentValue == 1) {
      return HBMaterialColors.primarySwatch;
    } else {
      return HBMaterialColors.secondarySwatch;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: size,
              height: size,
              child: CircularProgressIndicator(
                value: _minPercentValue,
                backgroundColor: _color.withOpacity(.1),
                color: _color,
                strokeWidth: 3.2,
              ),
            ),
            HBText(
              _centeredValue.toString(),
              style: HBTextStyles.body.copyWith(
                color: _color,
              ),
            ),
          ],
        ),
        captionText != null
            ? Padding(
                padding: const EdgeInsets.only(top: HBSpacings.regular),
                child: HBText.muted(captionText!),
              )
            : const SizedBox.shrink(),
      ],
    );
  }
}
