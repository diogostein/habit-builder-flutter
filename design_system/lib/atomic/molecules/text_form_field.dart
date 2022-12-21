import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  final VoidCallback? onEditingComplete;
  final FocusNode? focusNode;
  final List<TextInputFormatter>? inputFormatters;
  final FormFieldValidator<String>? validator;
  final EdgeInsetsGeometry? margin;
  final TextCapitalization? textCapitalization;
  final String? initialValue;

  const HBTextFormField({
    super.key,
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
    this.onEditingComplete,
    this.focusNode,
    this.inputFormatters,
    this.validator,
    this.margin,
    this.textCapitalization,
    this.initialValue,
  });

  const HBTextFormField.email({
    super.key,
    this.hintText = 'Email',
    this.prefixIcon = Icons.email_outlined,
    this.obscureText = false,
    this.keyboardType = TextInputType.emailAddress,
    this.textInputAction,
    this.autofocus = false,
    this.enableSuggestions = true,
    this.enableInteractiveSelection = true,
    this.controller,
    this.backgroundColor,
    this.onEditingComplete,
    this.focusNode,
    this.inputFormatters,
    this.validator,
    this.margin,
    this.textCapitalization,
    this.initialValue,
  });

  const HBTextFormField.password({
    super.key,
    this.hintText = 'Password',
    this.prefixIcon = Icons.lock_outline,
    this.obscureText = true,
    this.keyboardType,
    this.textInputAction,
    this.autofocus = false,
    this.enableSuggestions = false,
    this.enableInteractiveSelection = false,
    this.controller,
    this.backgroundColor,
    this.onEditingComplete,
    this.focusNode,
    this.inputFormatters,
    this.validator,
    this.margin,
    this.textCapitalization,
    this.initialValue,
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
      onFocusChange: (hasFocus) => setState(() => _hasFocus = hasFocus),
      child: Padding(
        padding:
            widget.margin ?? const EdgeInsets.only(bottom: HBSpacings.xSmall),
        child: TextFormField(
          controller: widget.controller,
          focusNode: widget.focusNode,
          initialValue: widget.initialValue,
          keyboardType: widget.keyboardType,
          textInputAction: widget.textInputAction,
          textCapitalization:
              widget.textCapitalization ?? TextCapitalization.none,
          autofocus: widget.autofocus,
          enableInteractiveSelection: widget.enableInteractiveSelection,
          enableSuggestions: widget.enableSuggestions,
          obscureText: _obscureText,
          obscuringCharacter: '●',
          style: HBTextStyles.textFormField,
          onEditingComplete: widget.onEditingComplete,
          inputFormatters: widget.inputFormatters,
          validator: widget.validator,
          decoration: HBInputDecorations.inputDecoration.copyWith(
            fillColor: widget.backgroundColor ?? Colors.white,
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
                    onTap: () => setState(() => _obscureText = !_obscureText),
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
      ),
    );
  }
}
