import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HabitFrequencyList extends StatelessWidget {
  final Color color;
  final String title;
  final List<double> values;

  const HabitFrequencyList({
    super.key,
    required this.color,
    required this.title,
    required this.values,
  });

  List<Widget> get habitSquares => values
      .map(
        (value) => Padding(
          padding: const EdgeInsets.only(left: HBSpacings.xSmall),
          child: HBHabitSquare(
            type: value < 1 ? HBHabitSquareType.half : HBHabitSquareType.full,
            color: color,
          ),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return HBFlatCard(
      margin: const EdgeInsets.symmetric(
        horizontal: HBSpacings.regular,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: HBSpacings.xSmall,
        horizontal: HBSpacings.regular,
      ),
      child: SizedBox(
        height: 50,
        child: Row(
          children: [
            SizedBox(
              width: 120,
              child: HBText(
                title,
                style: HBTextStyles.small.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ...habitSquares,
          ],
        ),
      ),
    );
  }
}
