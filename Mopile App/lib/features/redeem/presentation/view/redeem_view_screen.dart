import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/core/widgets/custom_end_drawer.dart';
import 'package:qayedny/core/widgets/custom_text.dart';
import 'package:qayedny/core/widgets/main_appbar.dart';
import 'package:qayedny/core/widgets/side_bar.dart';
import 'package:qayedny/features/redeem/presentation/view/widgets/coupont_list_view.dart';
import 'package:qayedny/features/redeem/presentation/view/widgets/search_bar_gift.dart';

class RedeemViewScreen extends StatelessWidget {
  static const routeName = '/redeemViewScreen';

  const RedeemViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      endDrawer: const CustomEndDrawerAnimation(drawer: Sidebar()),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 26,
          right: 16,
        ).r,
        child: Column(children: [
          const SearchBarGift(),
          _tabSection(context),
          SizedBox(height: 20.h),
          CustomText(
            text: 'Top Coupons',
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
          ),
          SizedBox(height: 8.h),
          const Expanded(child: CouponListView()),
        ]),
      ),
    );
  }
}

Widget _tabSection(BuildContext context) {
  return DefaultTabController(
      length: 5,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        TabBar(
          tabs: const [
            Tab(text: "ALL"),
            Tab(text: "Transportation"),
            Tab(text: "Resturants"),
            Tab(text: "Shopping"),
            Tab(text: "Entertainment"),
          ],
          isScrollable: true,
          indicator: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: kYellowColor,
          ),
          labelColor: Colors.white,
          unselectedLabelColor: kBlueColor,
          labelStyle: const TextStyle(
              fontSize: 14,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontFamily: 'Poppins'),
          unselectedLabelStyle: const TextStyle(
              fontSize: 14,
              color: kBlueColor,
              fontWeight: FontWeight.w400,
              fontFamily: 'Poppins'),
        ),
      ]));
}
