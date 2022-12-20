import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:habit_builder/src/core/mixin/menu_actions.dart';

import 'widgets/menu_list.dart';
import 'widgets/profile_banner.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> with MenuActions {
  @override
  Widget build(BuildContext context) {
    return HBSliverScaffold(
      hasBackground: true,
      headerBar: HBHeaderBar(
        leading: HBCircleIconButton.drawer(onPressed: () {}),
        titleText: 'Settings',
      ),
      floatingActionButton: HBFloatingActionButton(
        onPressed: () {},
        child: const HBImage(HBSvgIcons.add),
      ),
      bottomNavigationBar: HBBottomAppBar(
        onMenuIconPressed: onMenuIconPressed,
        activeMenuIcon: HBMenuIconType.settings,
      ),
      slivers: const [
        SliverToBoxAdapter(
          child: ProfileBanner(),
        ),
        SliverToBoxAdapter(
          child: MenuList(),
        ),
      ],
    );
  }
}
