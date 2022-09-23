import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../onboarding_content.dart';

class KeepTrackPageViewItem extends StatelessWidget {
  const KeepTrackPageViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingContent(
      headerText: 'Keep track of your progress',
      illustration: HBIllustrations.manChart,
    );
  }
}
