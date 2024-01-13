import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qayedny/core/widgets/custom_text.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, top: 90, bottom: 60).r,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: "Welcome back!",
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
            CustomText(
              text: "We really miss you",
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ],
        ),
      ),
    );
  }
}
