import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';

class HBTabPageSelector extends StatelessWidget {
  final TabController? controller;

  const HBTabPageSelector({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return TabPageSelector(
      key: key,
      controller: controller,
      borderStyle: BorderStyle.none,
      color: HBMaterialColors.primarySwatch,
      selectedColor: HBMaterialColors.secondarySwatch,
      indicatorSize: 10,
    );
  }
}
