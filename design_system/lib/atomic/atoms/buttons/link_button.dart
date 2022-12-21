import 'package:flutter/material.dart';

import '../../../design_system.dart';

class HBLinkButton extends StatelessWidget {
  final String data;
  final VoidCallback onPressed;

  const HBLinkButton(
    this.data, {
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: HBButtonStyles.linkButton,
      child: Text(data),
    );
  }
}
