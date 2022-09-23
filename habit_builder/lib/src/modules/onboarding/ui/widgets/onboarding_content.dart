import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  final String headerText;
  final String illustration;

  const OnboardingContent({
    super.key,
    required this.headerText,
    required this.illustration,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(HBSpacings.xLarge),
      child: Column(
        children: [
          HBText.headline2(
            headerText,
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: HBImage(illustration),
          ),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'WE CAN ',
              style: HBTextStyles.body.copyWith(
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: 'HELP YOU ',
                  style: HBTextStyles.body.copyWith(
                    color: HBMaterialColors.primarySwatch,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const TextSpan(text: 'TO BE A BETTER VERSION OF '),
                TextSpan(
                  text: 'YOURSELF.',
                  style: HBTextStyles.body.copyWith(
                    color: HBMaterialColors.primarySwatch,
                    fontWeight: FontWeight.bold,
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
