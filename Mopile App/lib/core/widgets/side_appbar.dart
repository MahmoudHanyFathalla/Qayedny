import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import '../../constants.dart';

class SideAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const SideAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(AssetsData.backArrowIcon),
        onPressed: () => GoRouter.of(context).pop(),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xFFDD5464),
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
          letterSpacing: 0.16,
        ),
      ),
      actions: [
        IconButton(
          icon: SvgPicture.asset(AssetsData.listIcon),
          onPressed: () => {Scaffold.of(context).openEndDrawer()},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
