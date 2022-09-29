import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  final VoidCallback? onTap;

  const SignUp({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HBText(
          'Don\'t have an account? ',
          style: HBTextStyles.body.copyWith(fontSize: HBFontSizes.small),
        ),
        InkWell(
          onTap: onTap,
          child: HBText(
            'Sign up',
            style: HBTextStyles.link.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
