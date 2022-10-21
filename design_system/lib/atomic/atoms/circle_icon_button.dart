import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HBCircleIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final double? iconSize;

  const HBCircleIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.iconSize,
  });

  factory HBCircleIconButton.back({required VoidCallback onPressed}) {
    return HBCircleIconButton(
      onPressed: onPressed,
      icon: Icons.keyboard_backspace,
    );
  }

  factory HBCircleIconButton.drawer({required VoidCallback onPressed}) {
    return HBCircleIconButton(
      onPressed: onPressed,
      icon: Icons.menu,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      customBorder: const CircleBorder(),
      child: Container(
        padding: const EdgeInsets.all(HBSpacings.xSmall),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.1),
          shape: BoxShape.circle,
        ),
        child: Icon(
          icon,
          color: HBMaterialColors.secondarySwatch,
          size: iconSize,
        ),
      ),
    );
  }
}
