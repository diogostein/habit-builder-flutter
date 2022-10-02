import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  HBHeaderBar(
                    leading: HBCircleIconButton.back(
                      onPressed: () => Modular.to.pop(),
                    ),
                  ),
                  const SizedBox(height: HBSpacings.regular),
                  HBText.headline3('Forgot your password?'),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: HBSpacings.xLarge,
                    ),
                    child: HBImage(
                      HBIllustrations.boxLocked,
                      height: 200,
                    ),
                  ),
                  HBFlatCard(
                    margin: const EdgeInsets.symmetric(
                      horizontal: HBSpacings.regular,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        HBText.small(
                          'Enter your registered email below to receive password reset instruction',
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: HBSpacings.xLarge),
                        const HBTextFormField.email(
                          backgroundColor: HBColors.background,
                          prefixIcon: null,
                        ),
                        const SizedBox(height: HBSpacings.small),
                        HBButton('Send Reset Link', onPressed: () {}),
                      ],
                    ),
                  ),
                  const Expanded(child: SizedBox(height: HBSpacings.regular)),
                  HBTextWithLinkButton(
                    onLinkTap: () => Modular.to.pop(),
                    text: 'Remember password?',
                    linkText: 'Login',
                  ),
                  const SizedBox(height: HBSpacings.regular),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
