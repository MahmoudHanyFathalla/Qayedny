import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:go_router/go_router.dart';
import 'package:qayedny/features/redeem/presentation/view/widgets/coupon_card.dart';

class CouponListView extends StatelessWidget {
  const CouponListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only( bottom: 10,top: 10).r,
            child: const CouponCard(),
          ),
        );
      },
    );
  }
}