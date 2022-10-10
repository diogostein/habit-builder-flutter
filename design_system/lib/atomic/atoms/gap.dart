import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBGapHeight extends StatelessWidget {
  final double gap;

  const HBGapHeight({super.key, this.gap = HBSpacings.regular});

  const HBGapHeight.xxSmall({super.key, this.gap = HBSpacings.xxSmall});
  const HBGapHeight.xSmall({super.key, this.gap = HBSpacings.xSmall});
  const HBGapHeight.small({super.key, this.gap = HBSpacings.small});
  const HBGapHeight.large({super.key, this.gap = HBSpacings.large});
  const HBGapHeight.xLarge({super.key, this.gap = HBSpacings.xLarge});
  const HBGapHeight.xxLarge({super.key, this.gap = HBSpacings.xxLarge});

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: gap);
  }
}

class HBGapWidth extends StatelessWidget {
  final double gap;

  const HBGapWidth({super.key, this.gap = HBSpacings.regular});

  const HBGapWidth.xxSmall({super.key, this.gap = HBSpacings.xxSmall});
  const HBGapWidth.xSmall({super.key, this.gap = HBSpacings.xSmall});
  const HBGapWidth.small({super.key, this.gap = HBSpacings.small});
  const HBGapWidth.large({super.key, this.gap = HBSpacings.large});
  const HBGapWidth.xLarge({super.key, this.gap = HBSpacings.xLarge});
  const HBGapWidth.xxLarge({super.key, this.gap = HBSpacings.xxLarge});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: gap);
  }
}
