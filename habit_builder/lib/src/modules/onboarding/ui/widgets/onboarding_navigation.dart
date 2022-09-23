import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class OnboardingNavigation extends StatelessWidget {
  final TabController? tabController;
  final VoidCallback onSkipPressed;
  final VoidCallback onNextPressed;

  const OnboardingNavigation({
    Key? key,
    this.tabController,
    required this.onSkipPressed,
    required this.onNextPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HBTextButton('Skip', onPressed: onSkipPressed),
        Expanded(
          child: Center(
            child: HBTabPageSelector(controller: tabController),
          ),
        ),
        HBTextButton('Next', onPressed: onNextPressed),
      ],
    );
  }
}
