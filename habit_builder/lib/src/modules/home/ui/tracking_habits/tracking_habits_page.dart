import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class TrackingHabitsPage extends StatefulWidget {
  const TrackingHabitsPage({Key? key}) : super(key: key);

  @override
  State<TrackingHabitsPage> createState() => _TrackingHabitsPageState();
}

class _TrackingHabitsPageState extends State<TrackingHabitsPage> {
  @override
  Widget build(BuildContext context) {
    return HBScaffold(
      headerBar: HBHeaderBar(
        leading: HBCircleIconButton.drawer(onPressed: () {}),
        titleText: 'Homepage',
        trailing: HBCircleAvatar.asset(
          'assets/images/justine-gosling.jpg',
          placeholderInitials: 'JG',
        ),
      ),
      floatingActionButton: HBFloatingActionButton(
        onPressed: () {},
        child: const HBImage(HBSvgIcons.add),
      ),
      bottomNavigationBar: HBBottomAppBar(
        onMenuIconPressed: (menuIconType) {},
        activeMenuIcon: HBMenuIconType.home,
      ),
      body: Container(),
    );
  }
}
