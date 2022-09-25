import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HBImage extends StatelessWidget {
  final String path;
  final BoxFit? fit;
  final double? width;
  final double? height;

  const HBImage(
    this.path, {
    super.key,
    this.fit,
    this.width,
    this.height,
  });

  bool get _isSvg => path.split('.').last == 'svg';

  @override
  Widget build(BuildContext context) {
    return _isSvg
        ? SvgPicture.asset(
            path,
            package: 'design_system',
            fit: fit ?? BoxFit.contain,
            width: width,
            height: height,
          )
        : Image.asset(
            path,
            package: 'design_system',
            fit: fit,
            width: width,
            height: height,
          );
  }
}
