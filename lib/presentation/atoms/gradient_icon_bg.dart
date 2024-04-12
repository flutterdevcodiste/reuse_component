// Automatic FlutterFlow imports
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!
class GradientIconBG extends StatefulWidget {
  const GradientIconBG({
    super.key,
    this.width,
    this.height,
    required this.gradientColor,
    this.radius = 20,
    this.child,
  });

  final double? width;
  final double? height;
  final Color gradientColor;
  final double radius;
  final Widget? child;

  @override
  State<GradientIconBG> createState() => _GradientIconBGState();
}

class _GradientIconBGState extends State<GradientIconBG> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: const Alignment(6.123234262925839e-17, 1),
              end: const Alignment(-1, 6.123234262925839e-17),
              colors: [
                widget.gradientColor.withOpacity(0.6),
                widget.gradientColor.withOpacity(0.5),
              ]),
          borderRadius: BorderRadius.all(Radius.circular(widget.radius)),
          border: GradientBoxBorder(
              width: 2,
              gradient: LinearGradient(
                  begin: const Alignment(1, 6.123234262925839e-17),
                  end: const Alignment(6.123234262925839e-17, -1),
                  colors: [
                    widget.gradientColor.withOpacity(0),
                    widget.gradientColor,
                  ]))),
      child: widget.child,
    );
  }
}
