import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import '../onboarding_content.dart';

class JoinCommunityPageViewItem extends StatelessWidget {
  const JoinCommunityPageViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingContent(
      headerText: 'Join a supportive community',
      illustration: HBIllustrations.manBonfire,
    );
  }
}
