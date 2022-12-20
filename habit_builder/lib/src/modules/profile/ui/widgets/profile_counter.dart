import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class ProfileCounter extends StatelessWidget {
  final String labelText;
  final int value;
  final Widget icon;

  const ProfileCounter({
    Key? key,
    required this.labelText,
    required this.value,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: HBText.muted(labelText),
      ),
      subtitle: HBText.headline3(
        value.toString(),
        textAlign: TextAlign.start,
      ),
      trailing: icon,
    );
  }
}
