import 'package:flutter/material.dart';

class HBCircleIconButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const HBCircleIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  factory HBCircleIconButton.back({required VoidCallback onPressed}) {
    return HBCircleIconButton(
      onPressed: onPressed,
      icon: Icons.keyboard_backspace,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      customBorder: const CircleBorder(),
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(.1),
          shape: BoxShape.circle,
        ),
        child: Icon(icon),
      ),
    );
  }
}
