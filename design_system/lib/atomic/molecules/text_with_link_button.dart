import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBTextWithLinkButton extends StatelessWidget {
  final String text;
  final String linkText;
  final VoidCallback onLinkTap;

  const HBTextWithLinkButton({
    super.key,
    required this.onLinkTap,
    required this.text,
    required this.linkText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HBText(
          '$text ',
          style: HBTextStyles.body.copyWith(fontSize: HBFontSizes.small),
        ),
        InkWell(
          onTap: onLinkTap,
          child: HBText(
            linkText,
            style: HBTextStyles.link.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
