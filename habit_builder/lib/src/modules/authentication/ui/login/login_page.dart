import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import 'widgets/facebook_button.dart';
import 'widgets/google_button.dart';
import 'widgets/login_form.dart';
import 'widgets/welcome_title.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return HBScaffold(
      body: Stack(
        children: [
          const Positioned(
            top: -230,
            child: HBImage(
              HBIllustrations.bgSplash,
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
                  HBColors.background.withOpacity(.2),
                  HBColors.background,
                ],
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.min,
                children: [
                  HBHeaderBar(
                    trailing: HBCircleIconButton(
                      icon: Icons.question_mark,
                      onPressed: () {},
                    ),
                  ),
                  const WelcomeTitle(),
                  const HBGapHeight.xLarge(),
                  const GoogleButton(),
                  const HBGapHeight.xSmall(),
                  const FacebookButton(),
                  const HBGapHeight.large(),
                  const LoginForm(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
