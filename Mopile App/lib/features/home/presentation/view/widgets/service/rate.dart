import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/core/widgets/custom_text.dart';

class Rate extends StatelessWidget {
  const Rate({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: kBlueColor),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5).r,
        child: Row(
          children: [
            const Icon(
              Icons.star,
              color: kBlueColor,
              size: 12,
            ),
            CustomText(
              text: ' ${text} / 5',
              fontSize: 10,
              fontWeight: FontWeight.w500,
              color: kBlueColor,
            ),
          ],
        ),
      ),
    );
  }
}
