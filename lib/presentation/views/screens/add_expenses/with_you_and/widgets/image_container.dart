import 'package:flutter/material.dart';

class ImageContainer extends StatelessWidget {
  final String assetPath;
  final double height;
  final double width;
  final BoxFit fit;
  final BorderRadius? borderRadius;

  const ImageContainer({
    Key? key,
    required this.assetPath,
    this.height = 100,
    this.width = 100,
    this.fit = BoxFit.cover,
    this.borderRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        image: DecorationImage(image: AssetImage(assetPath), fit: fit),
      ),
    );
  }
}
