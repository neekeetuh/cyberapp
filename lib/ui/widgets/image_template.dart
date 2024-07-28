import 'package:flutter/material.dart';

class ImageTemplate extends StatelessWidget {
  const ImageTemplate({
    super.key,
    required this.image,
    this.height = 50,
    this.width = 50,
    this.borderRadius = 20,
  });

  final ImageProvider image;
  final double height;
  final double width;

  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 13),
      child: Align(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: Image(
            height: height,
            width: width,
            image: image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
