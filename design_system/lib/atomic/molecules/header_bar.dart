import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBHeaderBar extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget? leading;
  final String? titleText;
  final Widget? trailing;

  const HBHeaderBar({
    super.key,
    this.leading,
    this.titleText,
    this.trailing,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: padding ?? const EdgeInsets.all(HBSpacings.regular),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 44,
            height: 44,
            child: leading,
          ),
          HBText(
            titleText ?? '',
            style: HBTextStyles.body.copyWith(
              fontSize: HBFontSizes.large,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 44,
            height: 44,
            child: trailing,
          ),
        ],
      ),
    );
  }
}
