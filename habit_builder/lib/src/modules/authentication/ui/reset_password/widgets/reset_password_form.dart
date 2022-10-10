import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../../../core/validator_provider.dart';
import '../../../../../widgets/show_snack_bar.dart';

class ResetPasswordForm extends StatefulWidget {
  const ResetPasswordForm({Key? key}) : super(key: key);

  @override
  State<ResetPasswordForm> createState() => _ResetPasswordFormState();
}

class _ResetPasswordFormState extends State<ResetPasswordForm> {
  final _formKey = GlobalKey<FormState>();

  _sendResetLink() {
    if (_formKey.currentState?.validate() == true) {
      showSnackBar(context: context, message: 'Email sent successfully!');
      Modular.to.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          HBText.small(
            'Enter your registered email below to receive password reset instruction',
            textAlign: TextAlign.center,
          ),
          const HBGapHeight.xLarge(),
          HBTextFormField.email(
            backgroundColor: HBColors.background,
            prefixIcon: null,
            validator: MultiValidator([
              ValidatorProvider.required(),
              ValidatorProvider.email(),
            ]),
          ),
          HBButton('Send Reset Link', onPressed: _sendResetLink),
        ],
      ),
    );
  }
}
