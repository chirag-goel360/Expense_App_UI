import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  GradientText(
    this.text, {
    @required this.gradient,
    @required this.textfont,
    this.textalign,
  });

  final String text;
  final double textfont;
  final TextAlign textalign;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(
          0,
          0,
          bounds.width,
          bounds.height,
        ),
      ),
      child: Text(
        text,
        textAlign: textalign,
        style: TextStyle(
          color: Colors.white,
          fontSize: textfont,
        ),
      ),
    );
  }
}
