import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/core/widgets/custom_text.dart';

class Offer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String expirationDate;

  const Offer({
    Key? key,
    required this.title,
    required this.subtitle,
    this.expirationDate = 'Valid until 03 March 2024',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8.h),
        CustomText(
          text: title,
          color: kBlueColor,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        CustomText(
          text: subtitle,
          color: kBlueColor,
          fontWeight: FontWeight.w500,
        ),
        SizedBox(height: 12.h),
        CustomText(
          text: expirationDate,
          fontSize: 10,
          fontWeight: FontWeight.w500,
          color: kLightBlueColor,
          ),
      ],
    );
  }
}
