import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'widgets/sign_up_divider.dart';
import 'widgets/sign_up_form.dart';
import 'widgets/sign_up_social.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return HBScaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: HBSpacings.regular),
          const HBImage(
            HBIllustrations.createYourAccount,
            height: 180,
          ),
          const SizedBox(height: HBSpacings.regular),
          HBText.headline3('Create your account'),
          const SignUpForm(),
          const SignUpDivider(),
          const SignUpSocial(),
          const Expanded(child: SizedBox(height: HBSpacings.regular)),
          HBTextWithLinkButton(
            onLinkTap: () => Modular.to.pop(),
            text: 'Already have an account?',
            linkText: 'Sign in',
          ),
          const SizedBox(height: HBSpacings.regular),
        ],
      ),
    );
  }
}
