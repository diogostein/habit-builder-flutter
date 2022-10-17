import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HabitDayList extends StatelessWidget {
  const HabitDayList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: HBSpacings.regular,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: HBSpacings.xSmall,
        horizontal: HBSpacings.regular,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 120,
            child: HBText(
              'HABITS',
              style: HBTextStyles.small.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const HBWeekDayCard(weekDay: 7, day: 17),
          const HBWeekDayCard(weekDay: 1, day: 18),
          const HBWeekDayCard(weekDay: 2, day: 19),
          const HBWeekDayCard(weekDay: 3, day: 20),
          const HBWeekDayCard(weekDay: 4, day: 21),
          const HBWeekDayCard(weekDay: 5, day: 22),
          const HBWeekDayCard(weekDay: 6, day: 23),
        ],
      ),
    );
  }
}
