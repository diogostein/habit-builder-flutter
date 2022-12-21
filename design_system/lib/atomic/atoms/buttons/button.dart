import 'package:flutter/material.dart';

import '../../../design_system.dart';

class HBButton extends StatelessWidget {
  final String data;
  final VoidCallback onPressed;

  const HBButton(
    this.data, {
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: HBButtonStyles.primaryButton,
      child: Text(data),
    );
  }
}
