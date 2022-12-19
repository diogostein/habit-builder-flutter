import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBHeaderBar extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final Widget? leading;
  final String? titleText;
  final Widget? trailing;
  final bool automaticallyImplyLeading;

  const HBHeaderBar({
    super.key,
    this.leading,
    this.titleText,
    this.trailing,
    this.padding,
    this.automaticallyImplyLeading = false,
  });

  Widget? _leadingFallback(BuildContext context) {
    if (automaticallyImplyLeading) {
      return HBCircleIconButton.back(
        onPressed: () => Navigator.pop(context),
      );
    }

    return null;
  }

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
            child: leading ?? _leadingFallback(context),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: HBSpacings.regular,
              ),
              child: HBText(
                titleText ?? '',
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style: HBTextStyles.body.copyWith(
                  fontSize: HBFontSizes.large,
                  fontWeight: FontWeight.bold,
                ),
              ),
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
