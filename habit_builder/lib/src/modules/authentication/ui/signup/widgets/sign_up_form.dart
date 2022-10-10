import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:habit_builder/src/widgets/show_snack_bar.dart';

import '../../../../../core/validator_provider.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  final _focusName = FocusNode();
  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();

  _onCreateAccount() {
    if (_formKey.currentState?.validate() == true) {
      showSnackBar(context: context, message: 'Account created successfully!');
      Modular.to.pop();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(HBSpacings.regular),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            HBTextFormField(
              focusNode: _focusName,
              autofocus: true,
              hintText: 'Name',
              prefixIcon: Icons.person_outline,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.name,
              textCapitalization: TextCapitalization.words,
              validator: ValidatorProvider.required(),
              onEditingComplete: () => _focusEmail.requestFocus(),
            ),
            HBTextFormField.email(
              focusNode: _focusEmail,
              textInputAction: TextInputAction.next,
              validator: MultiValidator([
                ValidatorProvider.required(),
                ValidatorProvider.email(),
              ]),
              onEditingComplete: () => _focusPassword.requestFocus(),
            ),
            HBTextFormField.password(
              focusNode: _focusPassword,
              textInputAction: TextInputAction.done,
              validator: MultiValidator([
                ValidatorProvider.required(),
                ValidatorProvider.minLength(4),
              ]),
            ),
            const HBGapHeight.xSmall(),
            HBCheckBox(
              onChange: (isChecked) {},
              isChecked: true,
              labelText: 'Keep me signed in',
            ),
            const HBGapHeight(),
            HBCheckBox(
              onChange: (isChecked) {},
              isChecked: true,
              labelText: 'Email me about special pricing and more',
            ),
            const HBGapHeight(),
            HBButton(
              'Create Account',
              onPressed: _onCreateAccount,
            ),
          ],
        ),
      ),
    );
  }
}
