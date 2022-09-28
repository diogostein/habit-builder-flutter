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
        style: const TextStyle(
          color: HBMaterialColors.primarySwatch,
          fontFamily: 'Manrope',
          package: 'design_system',
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(HBSpacings.regular),
          isDense: true,
          filled: true,
          fillColor: widget.backgroundColor,
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: HBMaterialColors.secondarySwatch.withOpacity(.4),
            fontFamily: 'Manrope',
            package: 'design_system',
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(
              width: 2,
              color: HBMaterialColors.primarySwatch.shade100,
            ),
          ),
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
                      fontSize: 14,
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
