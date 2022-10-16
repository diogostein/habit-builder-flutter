import 'package:design_system/atomic/tokens/dimensions.dart';
import 'package:flutter/material.dart';

enum HBHabitSquareType { half, full }

class HBHabitSquare extends StatelessWidget {
  final HBHabitSquareType type;
  final double size;
  final Color color;

  const HBHabitSquare({
    super.key,
    this.type = HBHabitSquareType.full,
    this.size = 50,
    required this.color,
  });

  const HBHabitSquare.half({
    super.key,
    this.type = HBHabitSquareType.half,
    this.size = 50,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: type == HBHabitSquareType.half ? color.withOpacity(.1) : color,
        borderRadius: BorderRadius.circular(HBRadius.habitSquare),
      ),
      child: type == HBHabitSquareType.half
          ? ClipPath(
              clipper: _CustomClipPath(),
              child: Container(
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(HBRadius.habitSquare),
                  ),
                ),
              ),
            )
          : null,
    );
  }
}

class _CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    const roundnessFactor = 6.0;
    const offset = 6.0;
    final w = size.width;
    final h = size.height;
    final path = Path();

    path.lineTo(0, h);
    path.lineTo(w - roundnessFactor - offset, h);
    path.quadraticBezierTo(w - offset, h, w - offset, h - roundnessFactor);
    path.lineTo(roundnessFactor, offset);
    path.quadraticBezierTo(0, offset, 0, roundnessFactor + offset);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
