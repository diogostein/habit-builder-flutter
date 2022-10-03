import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:habit_builder/src/core/validator_provider.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailFocus = FocusNode();
  final _passwordFocus = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _emailFocus.dispose();
    _passwordFocus.dispose();
  }

  _onLoginPressed() {
    if (_formKey.currentState?.validate() == true) {
      print('valid!!!');
    } else {
      _emailFocus.requestFocus();
    }
  }

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
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const HBText(
              'Log in with email',
              textAlign: TextAlign.center,
            ),
            const Divider(height: HBSpacings.xLarge),
            HBTextFormField.email(
              backgroundColor: HBColors.background,
              focusNode: _emailFocus,
              autofocus: true,
              textInputAction: TextInputAction.next,
              validator: MultiValidator([
                ValidatorProvider.required(),
                ValidatorProvider.email(),
              ]),
              onEditingComplete: () => _passwordFocus.requestFocus(),
            ),
            HBTextFormField.password(
              backgroundColor: HBColors.background,
              focusNode: _passwordFocus,
              textInputAction: TextInputAction.done,
              validator: MultiValidator([
                ValidatorProvider.required(),
                ValidatorProvider.minLength(4),
              ]),
            ),
            const SizedBox(height: HBSpacings.xSmall),
            HBButton('Login', onPressed: _onLoginPressed),
            HBLinkButton(
              'Forgot Password?',
              onPressed: () => Modular.to.pushNamed('reset-password'),
            ),
            HBTextWithLinkButton(
              text: 'Don\'t have an account?',
              linkText: 'Sign up',
              onLinkTap: () => Modular.to.pushNamed('sign-up'),
            ),
          ],
        ),
      ),
    );
  }
}
