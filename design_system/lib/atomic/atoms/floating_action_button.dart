import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBFloatingActionButton extends StatelessWidget {
  final Function()? onPressed;
  final Offset? translate;
  final Widget? child;

  const HBFloatingActionButton({
    super.key,
    this.onPressed,
    this.child,
    this.translate,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: translate ?? const Offset(0, -14),
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: HBMaterialColors.primarySwatch.withOpacity(.2),
          shape: BoxShape.circle,
        ),
        child: SizedBox(
          width: 52,
          height: 52,
          child: FloatingActionButton(
            onPressed: onPressed,
            elevation: 0,
            backgroundColor: HBMaterialColors.primarySwatch,
            foregroundColor: HBMaterialColors.secondarySwatch,
            child: child,
          ),
        ),
      ),
    );
  }
}
