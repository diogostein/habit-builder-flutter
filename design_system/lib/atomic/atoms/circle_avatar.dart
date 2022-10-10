import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBCircleAvatar extends StatefulWidget {
  final ImageProvider? backgroundImage;
  final Color? backgroundColor;
  final String? placeholderInitials;

  const HBCircleAvatar({
    super.key,
    this.backgroundImage,
    this.backgroundColor,
    this.placeholderInitials,
  });

  factory HBCircleAvatar.asset(
    String src, {
    Key? key,
    Color? backgroundColor,
    String? placeholderInitials,
  }) {
    return HBCircleAvatar(
      key: key,
      backgroundImage: AssetImage(src),
      backgroundColor: backgroundColor,
      placeholderInitials: placeholderInitials,
    );
  }

  @override
  State<HBCircleAvatar> createState() => _HBCircleAvatarState();
}

class _HBCircleAvatarState extends State<HBCircleAvatar> {
  late bool _hasError;

  @override
  void initState() {
    super.initState();
    _hasError = false;
  }

  String get ensureInitials {
    var initials = widget.placeholderInitials ?? '';
    if (initials.isEmpty) return initials;
    if (initials.length > 2) initials = initials.substring(0, 2);

    return initials.toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: widget.backgroundImage,
      backgroundColor:
          widget.backgroundColor ?? HBMaterialColors.primarySwatch.shade100,
      child: _hasError ? HBText(ensureInitials) : null,
      onBackgroundImageError: (exception, stackTrace) {
        setState(() => _hasError = true);
      },
    );
  }
}
