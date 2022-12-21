import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ReminderCard extends StatelessWidget {
  const ReminderCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HBFlatCard(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: ListTile(
        title: const HBText('Reminder'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            HBText(
              '10:00AM',
              style: HBTextStyles.body.copyWith(
                color: HBMaterialColors.primarySwatch,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Icon(
              Icons.chevron_right,
              color: HBMaterialColors.primarySwatch,
            ),
          ],
        ),
      ),
    );
  }
}
