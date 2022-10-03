import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HBSocialButton extends StatelessWidget {
  final String data;
  final Widget icon;
  final VoidCallback onPressed;

  const HBSocialButton(
    this.data, {
    super.key,
    required this.onPressed,
    required this.icon,
  });

  factory HBSocialButton.facebook(
    String data, {
    Key? key,
    required VoidCallback onPressed,
  }) {
    return HBSocialButton(
      data,
      key: key,
      icon: const Icon(Icons.facebook, color: HBColors.facebook),
      onPressed: onPressed,
    );
  }

  factory HBSocialButton.google(
    String data, {
    Key? key,
    required VoidCallback onPressed,
  }) {
    return HBSocialButton(
      data,
      key: key,
      icon: const Padding(
        padding: EdgeInsets.only(top: 8),
        child: HBImage(
          HBSvgIcons.google,
          width: 32,
          height: 32,
        ),
      ),
      onPressed: onPressed,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      style: HBButtonStyles.socialButton,
      icon: Padding(
        padding: const EdgeInsets.only(right: HBSpacings.xSmall),
        child: icon,
      ),
      label: Text(
        data,
        style: HBTextStyles.body.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}
