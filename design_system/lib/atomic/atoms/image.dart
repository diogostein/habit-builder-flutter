import 'package:flutter/material.dart';

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

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      package: 'design_system',
      fit: fit,
      width: width,
      height: height,
    );
  }
}
