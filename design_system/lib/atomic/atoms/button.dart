import 'package:flutter/material.dart';

import '../tokens/styles.dart';

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
