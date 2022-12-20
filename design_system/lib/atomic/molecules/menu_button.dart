import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBMenuButton extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final IconData iconData;
  final String titleText;
  final String? subtitleText;
  final VoidCallback? onPressed;

  const HBMenuButton({
    Key? key,
    this.margin,
    required this.iconData,
    required this.titleText,
    this.subtitleText,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HBFlatCard(
      onTap: onPressed,
      padding: EdgeInsets.zero,
      margin: margin,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: HBSpacings.small,
          vertical: 0,
        ),
        leading: HBIcon(iconData),
        title: HBText(titleText),
        subtitle: subtitleText != null ? HBText.muted(subtitleText!) : null,
        trailing: const Icon(
          Icons.chevron_right,
          color: HBMaterialColors.secondarySwatch,
        ),
      ),
    );
  }
}
