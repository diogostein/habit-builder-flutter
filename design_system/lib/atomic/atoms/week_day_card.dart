import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBWeekDayCard extends StatelessWidget {
  static const _weekDays = {
    1: 'MON',
    2: 'TUE',
    3: 'WED',
    4: 'THU',
    5: 'FRI',
    6: 'SAT',
    7: 'SUN',
  };

  final int weekDay;
  final int day;

  const HBWeekDayCard({super.key, required this.weekDay, required this.day});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: HBSpacings.xSmall),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(HBRadius.habitSquare),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HBText(
            _weekDays[weekDay] ?? '-',
            style: HBTextStyles.body.copyWith(
              fontSize: HBFontSizes.xxSmall,
              fontWeight: FontWeight.bold,
              color: HBMaterialColors.secondarySwatch.shade100,
            ),
          ),
          HBText(
            day.toString(),
            style: HBTextStyles.body.copyWith(
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
