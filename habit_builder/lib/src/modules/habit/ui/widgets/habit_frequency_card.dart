import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import 'week_day_with_habit_square.dart';

class HabitFrequencyCard extends StatelessWidget {
  const HabitFrequencyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HBFlatCard(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(HBSpacings.regular),
            child: Row(
              children: [
                const Expanded(
                  child: HBText('Habit Frequency'),
                ),
                HBText(
                  'Custom',
                  style: HBTextStyles.body.copyWith(
                    color: HBMaterialColors.primarySwatch,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Icon(
                  Icons.chevron_right,
                  color: HBMaterialColors.primarySwatch,
                ),
              ],
            ),
          ),
          const HBDivider(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: IntrinsicHeight(
              child: Row(
                children: const [
                  WeekDayWithHabitSquare(
                    padding: EdgeInsets.all(HBSpacings.small),
                    weekDayText: 'SUN',
                    habitSquareType: HBHabitSquareType.full,
                  ),
                  HBVerticalDivider(),
                  WeekDayWithHabitSquare(
                    padding: EdgeInsets.all(HBSpacings.small),
                    weekDayText: 'MON',
                    habitSquareType: HBHabitSquareType.half,
                  ),
                  HBVerticalDivider(),
                  WeekDayWithHabitSquare(
                    padding: EdgeInsets.all(HBSpacings.small),
                    weekDayText: 'TUE',
                    habitSquareType: HBHabitSquareType.half,
                  ),
                  HBVerticalDivider(),
                  WeekDayWithHabitSquare(
                    padding: EdgeInsets.all(HBSpacings.small),
                    weekDayText: 'WED',
                    habitSquareType: HBHabitSquareType.full,
                  ),
                  HBVerticalDivider(),
                  WeekDayWithHabitSquare(
                    padding: EdgeInsets.all(HBSpacings.small),
                    weekDayText: 'THU',
                    habitSquareType: HBHabitSquareType.half,
                  ),
                  HBVerticalDivider(),
                  WeekDayWithHabitSquare(
                    padding: EdgeInsets.all(HBSpacings.small),
                    weekDayText: 'FRI',
                    habitSquareType: HBHabitSquareType.full,
                  ),
                  HBVerticalDivider(),
                  WeekDayWithHabitSquare(
                    padding: EdgeInsets.all(HBSpacings.small),
                    weekDayText: 'SAT',
                    habitSquareType: HBHabitSquareType.full,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
