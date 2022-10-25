import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HBFlatCard extends StatelessWidget {
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double? width;
  final double? height;
  final Widget child;
  final Function()? onTap;

  const HBFlatCard({
    super.key,
    this.margin,
    this.padding,
    required this.child,
    this.width,
    this.height,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        elevation: 0,
        margin: margin,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(HBRadius.flatCard),
        ),
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: padding ?? const EdgeInsets.all(HBSpacings.regular),
            child: child,
          ),
        ),
      ),
    );
  }
}
