import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import 'sign_up.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(HBSpacings.regular),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(HBRadius.box),
          topRight: Radius.circular(HBRadius.box),
        ),
      ),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HBText(
              'Log in with email',
              textAlign: TextAlign.center,
            ),
            const Divider(height: HBSpacings.xLarge),
            const HBTextFormField(
              hintText: 'Email',
              prefixIcon: Icons.email_outlined,
              backgroundColor: HBColors.background,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              autofocus: true,
            ),
            const SizedBox(height: HBSpacings.xSmall),
            const HBTextFormField.password(
              hintText: 'Password',
              prefixIcon: Icons.lock_outline,
              backgroundColor: HBColors.background,
              textInputAction: TextInputAction.done,
            ),
            const SizedBox(height: HBSpacings.regular),
            HBButton('Login', onPressed: () {}),
            HBLinkButton('Forgot Password?', onPressed: () {}),
            SignUp(onTap: () {}),
          ],
        ),
      ),
    );
  }
}
