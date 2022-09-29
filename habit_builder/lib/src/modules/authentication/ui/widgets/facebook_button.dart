import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class FacebookButton extends StatelessWidget {
  const FacebookButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: HBSpacings.regular,
      ),
      child: HBSocialButton.facebook(
        'Continue with Facebook',
        onPressed: () {},
      ),
    );
  }
}
