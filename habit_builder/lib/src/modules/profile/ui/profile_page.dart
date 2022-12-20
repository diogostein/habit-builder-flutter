import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:habit_builder/src/core/mixin/menu_actions.dart';
import 'package:habit_builder/src/modules/profile/ui/widgets/performance_section.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with MenuActions {
  @override
  Widget build(BuildContext context) {
    return HBSliverScaffold(
      hasBackground: true,
      headerBar: HBHeaderBar(
        automaticallyImplyLeading: true,
        titleText: 'Profile',
        trailing: HBCircleIconButton(
          onPressed: () {},
          icon: Icons.edit_outlined,
        ),
      ),
      slivers: [
        const SliverToBoxAdapter(
          child: PerformanceSection(),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: const [
              HBMenuButton(
                margin: EdgeInsets.symmetric(
                  horizontal: HBSpacings.regular,
                  vertical: HBSpacings.xxSmall,
                ),
                iconData: Icons.payment,
                titleText: 'Billing methods',
              ),
              HBMenuButton(
                margin: EdgeInsets.symmetric(
                  horizontal: HBSpacings.regular,
                  vertical: HBSpacings.xxSmall,
                ),
                iconData: Icons.stars,
                titleText: 'Longest streak',
                subtitleText: '20 days',
              ),
            ],
          ),
        )
      ],
    );
  }
}
