import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  final String image;
  final Color color;
  final Widget? child;

  const BackgroundWidget({
    super.key,
    required this.image,
    required this.color,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(
            color,
            BlendMode.color,
          ),
        ),
      ),
      child: child,
    );
  }
}
