import 'package:flutter/material.dart';

class HBDivider extends StatelessWidget {
  final Color? color;
  final double? height;

  const HBDivider({Key? key, this.color, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: color ?? Colors.black.withOpacity(.05),
      height: height ?? 0,
    );
  }
}
