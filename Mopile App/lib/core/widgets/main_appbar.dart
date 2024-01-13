import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(70.h);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 10.w),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: SizedBox(
            width: 100,
            child: Image.asset(AssetsData.logoImage),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AssetsData.plusCircleIcon),
            ),
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(AssetsData.bellRingingIcon),
            ),
            IconButton(
              // open sidebar drawer when pressed on the icon button in the appbar SideAppBar
              onPressed: () => {Scaffold.of(context).openEndDrawer()},
              icon: SvgPicture.asset(AssetsData.listIcon),
            ),
          ],
        ));
  }
}
