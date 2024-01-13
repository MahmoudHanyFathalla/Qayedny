import 'package:flutter/material.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/core/widgets/custom_text.dart';

class CustomPrice extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color textColor;
  final double radius;
  final double fontsize;
  final FontWeight fontWeight;

  const CustomPrice({
    super.key,
    required this.text,
    this.width = 75,
    this.height = 25,
    this.backgroundColor = kRoseColor,
    this.textColor = Colors.white,
    this.radius = 25,
    this.fontsize = 12,
    this.fontWeight = FontWeight.w700,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: ShapeDecoration(
        color: backgroundColor,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
      ),
      child: CustomText(
        text: text,
        alignment: Alignment.center,
        fontWeight: fontWeight,
        fontSize: fontsize,
        color: textColor,
      ),
    );
  }
}
