import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double? size;
  final String image;

  const LogoWidget({super.key, this.size, required this.image});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'LogoWidget',
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image(
          image: AssetImage(image),
          height: 100,
          width: 100,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
