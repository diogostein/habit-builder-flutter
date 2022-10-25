import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../../data/models/course.dart';

class VideoBox extends StatelessWidget {
  final Course course;

  const VideoBox({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return HBFlatCard(
      margin: const EdgeInsets.symmetric(
        horizontal: HBSpacings.regular,
        vertical: HBSpacings.xxSmall,
      ),
      padding: EdgeInsets.zero,
      height: 200,
      child: Stack(
        children: [
          DecoratedBox(
            position: DecorationPosition.foreground,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.25),
            ),
            child: Image.asset(
              course.image ?? '',
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
          const Center(
            child: Icon(
              Icons.play_circle_outline,
              color: Colors.white,
              size: 48,
            ),
          ),
        ],
      ),
    );
  }
}
