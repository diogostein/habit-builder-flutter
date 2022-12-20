import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBIcon extends StatelessWidget {
  final IconData iconData;
  final Color? color;
  final Color? backgroundColor;
  final double? borderRadius;

  const HBIcon(
    this.iconData, {
    super.key,
    this.color,
    this.backgroundColor,
    this.borderRadius,
  });

  factory HBIcon.circular(
    IconData iconData, {
    Key? key,
    Color? color,
    Color? backgroundColor,
  }) {
    return HBIcon(
      iconData,
      key: key,
      color: color,
      backgroundColor: backgroundColor,
      borderRadius: 180,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(HBSpacings.xSmall),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          borderRadius ?? HBRadius.iconBackground,
        ),
        color:
            backgroundColor ?? HBMaterialColors.primarySwatch.withOpacity(.1),
      ),
      child: Icon(
        iconData,
        color: color ?? HBMaterialColors.primarySwatch,
      ),
    );
  }
}
