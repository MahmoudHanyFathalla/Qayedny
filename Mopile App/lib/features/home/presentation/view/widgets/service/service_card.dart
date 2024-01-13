import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/core/widgets/custom_price.dart';
import 'package:qayedny/core/widgets/custom_text.dart';
import 'package:qayedny/features/home/presentation/view/widgets/service/rate.dart';

class ServiceCard extends StatelessWidget {
  const ServiceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: kGradientBorder,
          borderRadius: BorderRadius.circular(10.r),
          color: kCardBackgroundColor),
      child: Padding(
          padding:
              const EdgeInsets.only(top: 11, bottom: 14, left: 20, right: 10).r,
          child: Row(
            children: [
              Container(
                width: 50.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/he.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    text: 'UX/UI for medical  Mobile ',
                    color: kBlueColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    alignment: Alignment.topLeft,
                  ),
                  const Divider(color: Colors.grey, thickness: 1),
                  Row(
                    children: [
                      Row(
                        children: [
                          const CustomText(
                            text: "Ahmed Mohamed",
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                            color: kBlueColor,
                            alignment: Alignment.topLeft,
                          ),
                          Row(
                            children: [
                              const Rate(text: "4.5"),
                              SizedBox(
                                width: 5.w,
                              ),
                              const CustomPrice(
                                text: "25 TPs",
                                radius: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )),
    );
  }
}
