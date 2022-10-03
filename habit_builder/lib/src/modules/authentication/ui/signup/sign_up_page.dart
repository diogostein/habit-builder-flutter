import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../../../../core/validator_provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _focusName = FocusNode();
  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();

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
          Form(
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
                  CustomCheckbox(onChange: (selected) {}),
                  HBButton('Create Account', onPressed: () {}),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: HBSpacings.regular,
              vertical: HBSpacings.xxSmall,
            ),
            child: Row(
              children: [
                const Expanded(child: Divider(thickness: 1)),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: HBSpacings.regular,
                  ),
                  child: HBText(
                    'Or sign in with',
                    style: HBTextStyles.small.copyWith(
                      color: HBMaterialColors.secondarySwatch.shade50,
                    ),
                  ),
                ),
                const Expanded(child: Divider(thickness: 1)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(HBSpacings.regular),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: HBSocialButton.google('Google', onPressed: () {}),
                ),
                const SizedBox(width: HBSpacings.regular),
                Expanded(
                  child: HBSocialButton.facebook('Facebook', onPressed: () {}),
                ),
              ],
            ),
          ),
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

class CustomCheckbox extends StatefulWidget {
  final Function(bool) onChange;
  final bool? isChecked;
  final double? size;
  final double? iconSize;
  final Color? selectedColor;
  final Color? selectedIconColor;
  final Color? borderColor;
  final Icon? checkIcon;

  const CustomCheckbox({
    super.key,
    this.isChecked,
    required this.onChange,
    this.size,
    this.iconSize,
    this.selectedColor,
    this.selectedIconColor,
    this.borderColor,
    this.checkIcon,
  });

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _isSelected = false;

  @override
  void initState() {
    _isSelected = widget.isChecked ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
          widget.onChange(_isSelected);
        });
      },
      child: Align(
        alignment: Alignment.centerLeft,
        child: AnimatedContainer(
          margin: const EdgeInsets.all(4),
          duration: const Duration(milliseconds: 500),
          curve: Curves.fastLinearToSlowEaseIn,
          decoration: BoxDecoration(
              color: _isSelected
                  ? widget.selectedColor ?? Colors.blue
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(3.0),
              border: Border.all(
                color: widget.borderColor ?? Colors.black,
                width: 1.5,
              )),
          width: widget.size ?? 18,
          height: widget.size ?? 18,
          child: _isSelected
              ? Icon(
                  Icons.check,
                  color: widget.selectedIconColor ?? Colors.white,
                  size: widget.iconSize ?? 14,
                )
              : null,
        ),
      ),
    );
  }
}
