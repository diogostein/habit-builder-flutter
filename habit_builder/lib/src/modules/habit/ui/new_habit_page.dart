import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:habit_builder/src/core/mixin/menu_actions.dart';
import 'package:habit_builder/src/modules/habit/ui/widgets/habit_frequency_card.dart';

import 'widgets/notification_card.dart';
import 'widgets/reminder_card.dart';

class NewHabitPage extends StatefulWidget {
  const NewHabitPage({Key? key}) : super(key: key);

  @override
  State<NewHabitPage> createState() => _NewHabitPageState();
}

class _NewHabitPageState extends State<NewHabitPage> with MenuActions {
  @override
  Widget build(BuildContext context) {
    return HBSliverScaffold(
      hasBackground: true,
      resizeToAvoidBottomInset: false,
      headerBar: const HBHeaderBar(
        automaticallyImplyLeading: true,
        titleText: 'New Habit',
      ),
      floatingActionButton: HBFloatingActionButton(
        onPressed: () => Modular.to.pop(),
        child: const HBImage(HBSvgIcons.check),
      ),
      bottomNavigationBar: HBBottomAppBar(
        onMenuIconPressed: onMenuIconPressed,
        activeMenuIcon: HBMenuIconType.home,
      ),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(HBSpacings.regular),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Expanded(
                      child: HBTextFormField(
                        margin: EdgeInsets.zero,
                        hintText: 'Enter habit name',
                        autofocus: true,
                      ),
                    ),
                    const HBGapWidth(),
                    HBCircleIconButton(
                      onPressed: () {},
                      icon: Icons.add,
                      iconColor: Colors.white,
                      backgroundColor: HBMaterialColors.primarySwatch,
                      size: 48,
                    ),
                  ],
                ),
                const HBGapHeight.xSmall(),
                const HabitFrequencyCard(),
                const HBGapHeight.xSmall(),
                const ReminderCard(),
                const HBGapHeight.xSmall(),
                const NotificationCard(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
