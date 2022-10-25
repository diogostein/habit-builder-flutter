import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:habit_builder/src/modules/courses/ui/widgets/lesson_item.dart';

import '../../data/models/course.dart';

class LessonList extends StatelessWidget {
  final Course course;

  const LessonList({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return HBFlatCard(
      margin: const EdgeInsets.symmetric(
        horizontal: HBSpacings.regular,
        vertical: HBSpacings.xxSmall,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HBGapHeight.xSmall(),
          HBText.title(course.name),
          const Divider(
            thickness: 1,
            height: HBSpacings.xLarge,
            color: HBColors.background,
          ),
          HBText(
            '${course.numberOfLessons} Lessons (${course.duration})',
            style: HBTextStyles.body.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          const Divider(
            thickness: 1,
            height: HBSpacings.xLarge,
            color: HBColors.background,
          ),
          ...course.lessons.map((e) => LessonItem(lesson: e)).toList(),
        ],
      ),
    );
  }
}
