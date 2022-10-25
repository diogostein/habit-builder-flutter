import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBIcon extends StatelessWidget {
  final IconData iconData;
  final Color? color;
  final Color? backgroundColor;

  const HBIcon(this.iconData, {super.key, this.color, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(HBSpacings.xSmall),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(HBRadius.iconBackground),
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
