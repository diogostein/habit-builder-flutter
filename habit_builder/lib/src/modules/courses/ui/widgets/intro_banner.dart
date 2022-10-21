import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class IntroBanner extends StatelessWidget {
  const IntroBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return HBFlatCard(
      margin: const EdgeInsets.all(HBSpacings.regular),
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          const Positioned.fill(
            top: 0,
            child: HBImage(
              HBIllustrations.coursesCover,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned.fill(
            right: 200,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    HBMaterialColors.primarySwatch.withOpacity(.5),
                    Colors.grey.withOpacity(0),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(HBSpacings.regular),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HBText('HABIT\nCOURSES', style: HBTextStyles.headline2),
                const HBGapHeight.xSmall(),
                FractionallySizedBox(
                  widthFactor: .65,
                  child: HBText(
                    'Find what fascinates you as you explore these habit courses.',
                    style: HBTextStyles.body.copyWith(
                      fontSize: HBFontSizes.xSmall,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
