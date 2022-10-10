import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBMenuIconButton extends StatelessWidget {
  final Function()? onPressed;
  final bool active;
  final Widget icon;

  const HBMenuIconButton({
    Key? key,
    this.onPressed,
    required this.active,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: ColorFiltered(
        colorFilter:
            active ? HBColorFilters.original : HBColorFilters.grayscale,
        child: icon,
      ),
    );
  }
}
