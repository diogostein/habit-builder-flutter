import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBCourseCard extends StatelessWidget {
  final String assetPath;
  final String title;
  final String caption1;
  final String caption2;

  const HBCourseCard({
    super.key,
    required this.assetPath,
    required this.title,
    required this.caption1,
    required this.caption2,
  });

  @override
  Widget build(BuildContext context) {
    return HBFlatCard(
      margin: const EdgeInsets.symmetric(
        vertical: HBSpacings.xxSmall,
        horizontal: HBSpacings.regular,
      ),
      padding: EdgeInsets.zero,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 4 / 2,
            child: Image.asset(
              assetPath,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(HBSpacings.regular),
            child: Column(
              children: [
                HBText.title(title),
                const HBGapHeight.xxSmall(),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HBText.caption(caption1),
                          HBText.caption(caption2, color: Colors.grey),
                        ],
                      ),
                    ),
                    HBCircleIconButton(
                      onPressed: () {},
                      icon: Icons.bookmark_border,
                      iconSize: 20,
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
