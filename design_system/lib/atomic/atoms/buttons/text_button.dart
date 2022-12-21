import 'package:flutter/material.dart';

import '../../../design_system.dart';

class HBTextButton extends StatelessWidget {
  final String data;
  final VoidCallback onPressed;

  const HBTextButton(
    this.data, {
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: HBButtonStyles.textButton,
      child: Text(data),
    );
  }
}
