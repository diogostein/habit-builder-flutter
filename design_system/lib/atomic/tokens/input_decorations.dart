import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

abstract class HBInputDecorations {
  static final inputDecoration = InputDecoration(
    contentPadding: const EdgeInsets.all(HBSpacings.regular),
    isDense: true,
    filled: true,
    hintStyle: HBTextStyles.hintTextFormField,
    errorStyle: HBTextStyles.errorTextFormField,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(HBRadius.inputForm),
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(HBRadius.inputForm),
      borderSide: BorderSide(
        width: 2,
        color: HBMaterialColors.primarySwatch.shade100,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(HBRadius.inputForm),
      borderSide: const BorderSide(
        width: 2,
        color: HBColors.sunset,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(HBRadius.inputForm),
      borderSide: BorderSide(
        width: 2,
        color: HBMaterialColors.primarySwatch.shade100,
      ),
    ),
  );
}
