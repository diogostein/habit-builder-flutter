import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class MenuList extends StatelessWidget {
  const MenuList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: HBSpacings.regular),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const HBText('General'),
          const HBGapHeight.small(),
          HBMenuButton(
            onPressed: () {},
            margin: const EdgeInsets.symmetric(
              vertical: HBSpacings.xxSmall,
            ),
            iconData: Icons.notifications,
            titleText: 'Notifications',
            subtitleText: 'Customize notifications',
          ),
          HBMenuButton(
            onPressed: () {},
            margin: const EdgeInsets.symmetric(
              vertical: HBSpacings.xxSmall,
            ),
            iconData: Icons.more_horiz,
            titleText: 'More customization',
            subtitleText: 'Customize it more to fit your usage',
          ),
          const HBGapHeight.small(),
          const HBText('Support'),
          const HBGapHeight.small(),
          HBMenuButton(
            onPressed: () {},
            margin: const EdgeInsets.symmetric(
              vertical: HBSpacings.xxSmall,
            ),
            iconData: Icons.phone,
            titleText: 'Contact',
          ),
          HBMenuButton(
            onPressed: () {},
            margin: const EdgeInsets.symmetric(
              vertical: HBSpacings.xxSmall,
            ),
            iconData: Icons.chat,
            titleText: 'Feedback',
          ),
          HBMenuButton(
            onPressed: () {},
            margin: const EdgeInsets.symmetric(
              vertical: HBSpacings.xxSmall,
            ),
            iconData: Icons.privacy_tip,
            titleText: 'Privacy Policy',
          ),
          HBMenuButton(
            onPressed: () {},
            margin: const EdgeInsets.symmetric(
              vertical: HBSpacings.xxSmall,
            ),
            iconData: Icons.info,
            titleText: 'About',
          ),
        ],
      ),
    );
  }
}
