import 'package:flutter/material.dart';

import '../../design_system.dart';

enum HBMenuIconType { home, courses, community, settings }

class HBBottomAppBar extends StatelessWidget {
  final Function(HBMenuIconType) onMenuIconPressed;
  final HBMenuIconType? activeMenuIcon;

  const HBBottomAppBar({
    super.key,
    required this.onMenuIconPressed,
    this.activeMenuIcon,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const HBGravityDeformedNotchedRectangle(),
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(HBSpacings.small),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            HBMenuIconButton(
              onPressed: () => onMenuIconPressed(HBMenuIconType.home),
              active: activeMenuIcon == HBMenuIconType.home,
              icon: const HBImage(HBPngIcons.menuHome),
            ),
            HBMenuIconButton(
              onPressed: () => onMenuIconPressed(HBMenuIconType.courses),
              active: activeMenuIcon == HBMenuIconType.courses,
              icon: const HBImage(HBPngIcons.menuCourses),
            ),
            const HBGapWidth.xxLarge(),
            HBMenuIconButton(
              onPressed: () => onMenuIconPressed(HBMenuIconType.community),
              active: activeMenuIcon == HBMenuIconType.community,
              icon: const HBImage(HBPngIcons.menuCommunity),
            ),
            HBMenuIconButton(
              onPressed: () => onMenuIconPressed(HBMenuIconType.settings),
              active: activeMenuIcon == HBMenuIconType.settings,
              icon: const HBImage(HBPngIcons.menuSettings),
            ),
          ],
        ),
      ),
    );
  }
}
