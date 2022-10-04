import 'package:flutter/material.dart';

import '../../design_system.dart';

class HBCheckBox extends StatefulWidget {
  final Function(bool) onChange;
  final bool? isChecked;
  final double? size;
  final double? iconSize;
  final Color? selectedColor;
  final Color? selectedIconColor;
  final Color? borderColor;
  final Icon? checkIcon;
  final String? labelText;

  const HBCheckBox({
    super.key,
    this.isChecked,
    required this.onChange,
    this.size,
    this.iconSize,
    this.selectedColor,
    this.selectedIconColor,
    this.borderColor,
    this.checkIcon,
    this.labelText,
  });

  @override
  State<HBCheckBox> createState() => _HBCheckBoxState();
}

class _HBCheckBoxState extends State<HBCheckBox> {
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.isChecked ?? false;
  }

  _onTap() {
    setState(() {
      _isChecked = !_isChecked;
      widget.onChange(_isChecked);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedContainer(
            duration: HBAnimDuration.normal,
            curve: Curves.fastLinearToSlowEaseIn,
            decoration: BoxDecoration(
              color: _isChecked
                  ? widget.selectedColor ?? HBMaterialColors.primarySwatch
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(6),
              border: !_isChecked
                  ? Border.all(
                      color:
                          widget.borderColor ?? HBMaterialColors.primarySwatch,
                      width: 2,
                    )
                  : null,
            ),
            width: widget.size ?? 20,
            height: widget.size ?? 20,
            child: _isChecked
                ? Icon(
                    Icons.check,
                    color: widget.selectedIconColor ??
                        HBMaterialColors.secondarySwatch,
                    size: widget.iconSize ?? 14,
                  )
                : null,
          ),
          widget.labelText != null
              ? Padding(
                  padding: const EdgeInsets.only(left: HBSpacings.small),
                  child: HBText(widget.labelText!),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
