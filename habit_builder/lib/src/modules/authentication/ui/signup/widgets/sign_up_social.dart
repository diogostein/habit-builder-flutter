import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class SignUpSocial extends StatelessWidget {
  const SignUpSocial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(HBSpacings.regular),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: HBSocialButton.google('Google', onPressed: () {}),
          ),
          const HBGapWidth(),
          Expanded(
            child: HBSocialButton.facebook('Facebook', onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
