import 'package:flutter/material.dart';
import '../../constants.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final Alignment alignment;
  final FontWeight fontWeight;

  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 16.0,
    this.color = kRoseColor,
    this.alignment = Alignment.topLeft,
    this.fontWeight = FontWeight.w500,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
