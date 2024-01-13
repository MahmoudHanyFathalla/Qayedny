import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/core/widgets/custom_price.dart';
import 'package:qayedny/features/redeem/presentation/view/widgets/offer.dart';
import 'package:ticket_widget/ticket_widget.dart';

class CouponCard extends StatelessWidget {
  const CouponCard({super.key});

  @override
  Widget build(BuildContext context) {
    return TicketWidget(
        width: 362.w,
        height: 116.h,
        isCornerRounded: true,
        child: Container(
            width: 350.w,
            height: 90.h,
            decoration: BoxDecoration(
              border: kGradientBorder,
              borderRadius: BorderRadius.circular(10.r),
              color: kCardBackgroundColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 30.w,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // contain img of swvl and price tag
                    Container(
                      width: 90.w,
                      height: 60.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/swvl.png'),
                        ),
                      ),
                    ),
                    const CustomPrice(
                      text: '25 TPs',
                    )
                  ],
                ),
                SizedBox(
                  width: 10.w,
                ),
                SvgPicture.asset(AssetsData.dashedIcon),
                SizedBox(
                  width: 26.w,
                ),
                const Offer(title: 'SWVL', subtitle: '25% Promo code')
              ],
            )));
  }
}
