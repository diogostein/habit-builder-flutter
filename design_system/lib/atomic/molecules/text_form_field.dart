import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HBTextFormField extends StatefulWidget {
  final String? hintText;
  final IconData? prefixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final bool autofocus;
  final bool enableSuggestions;
  final bool? enableInteractiveSelection;
  final TextEditingController? controller;
  final Color? backgroundColor;

  const HBTextFormField({
    Key? key,
    this.hintText,
    this.prefixIcon,
    this.obscureText = false,
    this.keyboardType,
    this.textInputAction,
    this.autofocus = false,
    this.enableSuggestions = true,
    this.enableInteractiveSelection,
    this.controller,
    this.backgroundColor,
  }) : super(key: key);

  const HBTextFormField.password({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.obscureText = true,
    this.keyboardType,
    this.textInputAction,
    this.autofocus = false,
    this.enableSuggestions = false,
    this.enableInteractiveSelection = false,
    this.controller,
    this.backgroundColor,
  });

  @override
  State<HBTextFormField> createState() => _HBTextFormFieldState();
}

class _HBTextFormFieldState extends State<HBTextFormField> {
  late bool _obscureText;
  bool _hasFocus = false;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      onFocusChange: (hasFocus) {
        setState(() => _hasFocus = hasFocus);
      },
      child: TextFormField(
        controller: widget.controller,
        keyboardType: widget.keyboardType,
        textInputAction: widget.textInputAction,
        autofocus: widget.autofocus,
        enableInteractiveSelection: widget.enableInteractiveSelection,
        enableSuggestions: widget.enableSuggestions,
        obscureText: _obscureText,
        obscuringCharacter: '●',
        style: HBTextStyles.textFormField,
        decoration: HBDecorations.inputDecoration.copyWith(
          fillColor: widget.backgroundColor,
          hintText: widget.hintText,
          prefixIcon: widget.prefixIcon != null
              ? Padding(
                  padding: const EdgeInsets.only(
                    left: HBSpacings.regular,
                    right: HBSpacings.large,
                  ),
                  child: Icon(
                    widget.prefixIcon,
                    color: _hasFocus
                        ? HBMaterialColors.primarySwatch
                        : HBMaterialColors.secondarySwatch.withOpacity(.4),
                  ),
                )
              : null,
          suffix: widget.obscureText
              ? InkWell(
                  onTap: () {
                    setState(() => _obscureText = !_obscureText);
                  },
                  child: Text(
                    _obscureText ? 'Show' : 'Hide',
                    style: const TextStyle(
                      color: HBMaterialColors.secondarySwatch,
                      fontWeight: FontWeight.w500,
                      fontSize: HBFontSizes.small,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
