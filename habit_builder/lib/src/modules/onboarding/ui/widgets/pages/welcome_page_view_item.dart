import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../onboarding_content.dart';

class WelcomePageViewItem extends StatelessWidget {
  const WelcomePageViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingContent(
      headerText: 'Welcome to Monumental Habits',
      illustration: HBIllustrations.manConfident,
    );
  }
}
