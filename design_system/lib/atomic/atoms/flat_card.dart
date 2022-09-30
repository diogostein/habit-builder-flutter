import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HBFlatCard extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final Widget child;

  const HBFlatCard({
    super.key,
    this.margin,
    this.padding,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: margin,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(HBRadius.box),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(HBSpacings.large),
        child: child,
      ),
    );
  }
}
