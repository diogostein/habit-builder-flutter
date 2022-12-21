import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class NotificationCard extends StatefulWidget {
  const NotificationCard({Key? key}) : super(key: key);

  @override
  State<NotificationCard> createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  bool _activeNotification = false;

  @override
  Widget build(BuildContext context) {
    return HBFlatCard(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      child: ListTile(
        title: const HBText('Notification'),
        trailing: Switch(
          value: _activeNotification,
          activeColor: HBMaterialColors.secondarySwatch,
          inactiveThumbColor: HBMaterialColors.secondarySwatch,
          inactiveTrackColor: Colors.black.withOpacity(.15),
          onChanged: (checked) => setState(() => _activeNotification = checked),
        ),
      ),
    );
  }
}
