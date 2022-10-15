import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class MotivationalBanner extends StatelessWidget {
  const MotivationalBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return HBFlatCard(
      margin: const EdgeInsets.all(HBSpacings.regular),
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          const Positioned(
            top: -32,
            right: -32,
            child: HBImage(
              HBIllustrations.manConfident,
              width: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(HBSpacings.regular),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HBText.headline4(
                  'WE FIRST MAKE OUR HABITS,\nAND THEN OUR HABITS\nMAKES US.',
                  textAlign: TextAlign.start,
                ),
                const HBGapHeight.xSmall(),
                HBText(
                  '- ANONYMOUS',
                  style: HBTextStyles.body.copyWith(
                    fontSize: HBFontSizes.xSmall,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
                const HBGapHeight(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
