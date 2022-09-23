import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../onboarding_content.dart';

class CreateHabitPageViewItem extends StatelessWidget {
  const CreateHabitPageViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingContent(
      headerText: 'Create new habit easily',
      illustration: HBIllustrations.manClock,
    );
  }
}
