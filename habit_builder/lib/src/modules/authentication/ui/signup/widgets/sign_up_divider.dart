import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class SignUpDivider extends StatelessWidget {
  const SignUpDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: HBSpacings.regular,
        vertical: HBSpacings.xxSmall,
      ),
      child: Row(
        children: [
          const Expanded(child: Divider(thickness: 1)),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: HBSpacings.regular,
            ),
            child: HBText(
              'Or sign in with',
              style: HBTextStyles.small.copyWith(
                color: HBMaterialColors.secondarySwatch.shade50,
              ),
            ),
          ),
          const Expanded(child: Divider(thickness: 1)),
        ],
      ),
    );
  }
}
