import 'package:flutter/material.dart';

import '../../../design_system.dart';

abstract class HBButtonStyles {
  static final primaryButton = ElevatedButton.styleFrom(
    primary: HBMaterialColors.primarySwatch,
    onPrimary: HBMaterialColors.secondarySwatch,
    textStyle: HBTextStyles.body.copyWith(fontWeight: FontWeight.bold),
    elevation: 0,
    minimumSize: const Size(0, 56),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(HBRadius.button),
    ),
  );

  static final socialButton = ElevatedButton.styleFrom(
    primary: Colors.white,
    onPrimary: HBMaterialColors.secondarySwatch,
    textStyle: HBTextStyles.body.copyWith(fontWeight: FontWeight.bold),
    elevation: 0,
    minimumSize: const Size(0, 48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(HBRadius.socialButton),
    ),
  );

  static final textButton = TextButton.styleFrom(
    primary: HBMaterialColors.secondarySwatch,
    textStyle: HBTextStyles.body.copyWith(fontWeight: FontWeight.bold),
    minimumSize: const Size(0, 48),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(HBRadius.button),
    ),
  );

  static final linkButton = TextButton.styleFrom(
    primary: HBMaterialColors.secondarySwatch,
    textStyle: HBTextStyles.link,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(HBRadius.button),
    ),
  );
}
