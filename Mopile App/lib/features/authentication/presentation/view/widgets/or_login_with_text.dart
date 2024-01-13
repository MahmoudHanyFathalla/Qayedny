import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qayedny/core/widgets/custom_text.dart';

class OrLoginWithText extends StatelessWidget {
  const OrLoginWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8.h),
            child: Divider(
              color: Colors.grey.shade600,
            ),
          ),
        ),
         CustomText(text: "or login with", fontSize: 12, color: Colors.grey.shade600, fontWeight: FontWeight.w300),
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(8.0).r,
            child: Divider(
              color: Colors.grey.shade600,
            ),
          ),
        ),
      ],
    );
  }
}
