import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: HBSpacings.regular,
      ),
      child: HBSocialButton.google(
        'Continue with Google',
        onPressed: () {},
      ),
    );
  }
}
