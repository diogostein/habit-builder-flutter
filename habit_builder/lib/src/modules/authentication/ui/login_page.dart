import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top: -230,
            child: HBImage(
              HBIllustrations.manMountains,
            ),
          ),
          Container(
            height: double.infinity,
            alignment: Alignment.bottomCenter,
            decoration: BoxDecoration(
              color: HBColors.background,
              gradient: LinearGradient(
                begin: const Alignment(0, -.6),
                end: const Alignment(0, 0),
                colors: [
                  HBColors.background.withOpacity(0),
                  HBColors.background,
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: HBSpacings.regular,
                  ),
                  child: HBText.headline2(
                    'Welcome to monumental habits',
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: HBSpacings.xLarge),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: HBSpacings.regular,
                  ),
                  child: HBSocialButton.google(
                    'Continue with Google',
                    onPressed: () {},
                  ),
                ),
                const SizedBox(height: HBSpacings.xSmall),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: HBSpacings.regular,
                  ),
                  child: HBSocialButton.facebook(
                    'Continue with Facebook',
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
