import 'package:flutter/material.dart';

class HBVerticalDivider extends StatelessWidget {
  final Color? color;

  const HBVerticalDivider({Key? key, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return VerticalDivider(
      color: color ?? Colors.black.withOpacity(.05),
      width: 1,
    );
  }
}
