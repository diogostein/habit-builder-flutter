import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../data/models/lesson.dart';

class LessonItem extends StatelessWidget {
  final Lesson lesson;

  const LessonItem({super.key, required this.lesson});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: HBIcon(
        lesson.locked ? Icons.lock : Icons.play_arrow,
      ),
      title: HBText('${lesson.position}. ${lesson.name}'),
      trailing: HBText(
        lesson.durationInHoursAndMinutes,
        style: HBTextStyles.body.copyWith(
          color: HBMaterialColors.secondarySwatch.withOpacity(.5),
        ),
      ),
    );
  }
}
