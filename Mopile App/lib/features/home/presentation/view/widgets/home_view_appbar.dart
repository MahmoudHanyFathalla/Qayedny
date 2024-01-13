import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../constants.dart';

class HomeViewAppBar extends StatelessWidget {
  final void Function() addProject;
  final void Function() notification;
  final void Function() sideMenu;

  const HomeViewAppBar(this.addProject, this.notification, this.sideMenu,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          'Qayedny',
          style: TextStyle(
            color: Color(0xFF0C3751),
            fontSize: 24,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            height: 0.04,
            letterSpacing: 0.16,
          ),
        ),
        actions: [
          IconButton(
            onPressed: addProject,
            icon: SvgPicture.asset(AssetsData.plusCircleIcon),
          ),
          IconButton(
            onPressed: notification,
            icon: SvgPicture.asset(AssetsData.bellRingingIcon),
          ),
          IconButton(
            onPressed: sideMenu,
            icon: SvgPicture.asset(AssetsData.listIcon),
          ),
        ],
      ),
    );
  }
}
