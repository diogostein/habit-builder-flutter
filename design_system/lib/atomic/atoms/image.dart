import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HBImage extends StatelessWidget {
  final String path;
  final BoxFit? fit;
  final double? width;
  final double? height;
  final Color? color;
  final BlendMode? colorBlendMode;
  final String? package;

  const HBImage(
    this.path, {
    super.key,
    this.fit,
    this.width,
    this.height,
    this.color,
    this.colorBlendMode,
    this.package,
  });

  bool get _isSvg => path.split('.').last == 'svg';

  @override
  Widget build(BuildContext context) {
    return _isSvg
        ? SvgPicture.asset(
            path,
            package: package ?? 'design_system',
            fit: fit ?? BoxFit.contain,
            width: width,
            height: height,
            color: color,
            colorBlendMode: colorBlendMode ?? BlendMode.srcIn,
          )
        : Image.asset(
            path,
            package: package ?? 'design_system',
            fit: fit,
            width: width,
            height: height,
            color: color,
            colorBlendMode: colorBlendMode,
          );
  }
}
