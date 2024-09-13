import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class GlassContainer extends StatelessWidget {
  GlassContainer(
      {super.key,
      required this.height,
      required this.width,
      required this.borderRadius,
      required this.blur,
      required this.border,
      this.child});
  double width, height, borderRadius, border, blur;
  Widget? child;

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: width,
      height: height,
      borderRadius: borderRadius,
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.white.withOpacity(0.1),
          Colors.white.withOpacity(0.05),
        ],
        stops: [0.1, 1],
      ),
      border: border,
      blur: blur,
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.white.withOpacity(0.2),
          Colors.white.withOpacity(0.2),
        ],
      ),
      child: child,
    );
  }
}
