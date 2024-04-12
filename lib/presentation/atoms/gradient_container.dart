import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    this.width,
    this.height,
    this.gradientColor = const Color(0xFFF8F8FF),
    this.radius = 16,
    this.borderWidth = 1,
    this.hasBlur = true,
    this.child,
  });

  final double? width;
  final double? height;
  final Color gradientColor;
  final double radius;
  final double borderWidth;
  final Widget? child;
  final bool hasBlur;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        border: Border.all(color: gradientColor.withOpacity(0.1)),
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Colors.black.withOpacity(0.05),
            offset: const Offset(
              0.0,
              5.0,
            ),
            spreadRadius: 0.0,
          ),
          BoxShadow(
            blurRadius: 2.0,
            color: Colors.black.withOpacity(0.03),
            offset: const Offset(
              0.0,
              2.0,
            ),
            spreadRadius: 0.0,
          ),
          BoxShadow(
            blurRadius: 0.0,
            color: Colors.black.withOpacity(0.03),
            offset: const Offset(
              0.0,
              1.0,
            ),
            spreadRadius: 0.0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(radius)),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: hasBlur ? 10.0 : 0, sigmaY: hasBlur ? 10.0 : 0),
          child: Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: const Alignment(6.123234262925839e-17, 1),
                  end: const Alignment(-1, 6.123234262925839e-17),
                  colors: [
                    gradientColor.withOpacity(0.6),
                    gradientColor.withOpacity(0.5),
                  ]),
              borderRadius: BorderRadius.all(Radius.circular(radius)),
              border: GradientBoxBorder(
                width: borderWidth,
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    gradientColor.withOpacity(0.1),
                    gradientColor,
                  ],
                  stops: const [0.3326, 1.0],
                  transform: const GradientRotation(35 * (3.141592653589793 / 180)),
                ),
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
