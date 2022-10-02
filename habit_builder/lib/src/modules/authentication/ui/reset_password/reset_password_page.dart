import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:habit_builder/src/modules/authentication/ui/reset_password/widgets/reset_password_form.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return HBScaffold(
      headerBar: HBHeaderBar(
        leading: HBCircleIconButton.back(
          onPressed: () => Modular.to.pop(),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: HBSpacings.regular),
          HBText.headline3('Forgot your password?'),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: HBSpacings.xLarge),
            child: HBImage(
              HBIllustrations.boxLocked,
              height: 200,
            ),
          ),
          const HBFlatCard(
            margin: EdgeInsets.symmetric(horizontal: HBSpacings.regular),
            child: ResetPasswordForm(),
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
    );
  }
}
