import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

import 'widgets/habit_day_list.dart';
import 'widgets/habit_frequency_list.dart';
import 'widgets/motivational_banner.dart';

class TrackingHabitsPage extends StatefulWidget {
  const TrackingHabitsPage({Key? key}) : super(key: key);

  @override
  State<TrackingHabitsPage> createState() => _TrackingHabitsPageState();
}

class _TrackingHabitsPageState extends State<TrackingHabitsPage> {
  @override
  Widget build(BuildContext context) {
    return HBScaffold(
      extendBody: true,
      hasBackground: true,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const MotivationalBanner(),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                HabitDayList(),
                HabitFrequencyList(
                  color: HBColors.morning,
                  title: 'Read A Book',
                  values: [1, 1, .5, 1, 1, .5, 1],
                ),
                HBGapHeight.xSmall(),
                HabitFrequencyList(
                  color: HBColors.sunset,
                  title: 'Exercise',
                  values: [1, 1, .5, 1],
                ),
                HBGapHeight.xSmall(),
                HabitFrequencyList(
                  color: HBColors.twilight,
                  title: 'Wake Up Early',
                  values: [1, .5, 1],
                ),
                HBGapHeight.xSmall(),
                HabitFrequencyList(
                  color: HBColors.eclipse,
                  title: 'Walk Dog',
                  values: [1, .5, 1, .5, .5],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
