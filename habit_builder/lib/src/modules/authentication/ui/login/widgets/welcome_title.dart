import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class WelcomeTitle extends StatelessWidget {
  const WelcomeTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: HBSpacings.regular,
      ),
      child: HBText.headline2(
        'Welcome to monumental habits',
        textAlign: TextAlign.center,
      ),
    );
  }
}
