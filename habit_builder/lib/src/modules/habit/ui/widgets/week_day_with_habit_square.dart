import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class WeekDayWithHabitSquare extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final String weekDayText;
  final HBHabitSquareType habitSquareType;

  const WeekDayWithHabitSquare({
    Key? key,
    this.padding,
    required this.weekDayText,
    required this.habitSquareType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Column(
        children: [
          HBText(
            weekDayText,
            style: HBTextStyles.small.copyWith(
              fontSize: HBFontSizes.xSmall,
              color: HBMaterialColors.secondarySwatch.withOpacity(.5),
              fontWeight: FontWeight.bold,
            ),
          ),
          const HBGapHeight.xSmall(),
          HBHabitSquare(
            type: habitSquareType,
            color: HBMaterialColors.primarySwatch,
            size: 38,
          ),
        ],
      ),
    );
  }
}
