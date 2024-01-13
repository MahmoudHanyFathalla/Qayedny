import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../features/home/presentation/view/home_view_screen.dart';
import '../../features/profile/presentation/view/profile_view_screen.dart';
import '../../features/redeem/presentation/view/redeem_view_screen.dart';
import '../../features/messaging/presentation/view/messaging_view_screen.dart';

class BottomNavigation extends StatefulWidget {
  static const routeName = '/bottomNavigation';

  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _navIndex = 1;

  @override
  Widget build(BuildContext context) {
    final screens = [
      const MessagingViewScreen(),
      const HomeViewScreen(),
      const RedeemViewScreen(),
      const ProfileViewScreen(),
    ];
    return Scaffold(
      body: IndexedStack(index: _navIndex, children: screens),
      bottomNavigationBar: NavigationBarTheme(
        data:  NavigationBarThemeData(
          indicatorColor: kBackgroundColor.withOpacity(0.0),
          backgroundColor: Colors.white,
        ),
        child: NavigationBar(
          height: 70,
          selectedIndex: _navIndex,
          onDestinationSelected: (i) => setState(() => _navIndex = i),
          destinations: [
            NavigationDestination(
              icon: SvgPicture.asset(AssetsData.notSelectedMessagingIcon,
                  width: 26),
              selectedIcon: SvgPicture.asset(AssetsData.selectedMessagingIcon,
                  width: 26),
              label: 'Messaging',
            ),
            NavigationDestination(
              icon:
                  SvgPicture.asset(AssetsData.notSelectedHomeIcon, width: 28),
              selectedIcon:
                  SvgPicture.asset(AssetsData.selectedHomeIcon, width: 28),
              label: 'Home',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(AssetsData.notSelectedRedeemIcon,
                  width: 32),
              selectedIcon:
                  SvgPicture.asset(AssetsData.selectedRedeemIcon, width: 32),
              label: 'Redeem',
            ),
            NavigationDestination(
              icon: SvgPicture.asset(AssetsData.notSelectedProfileIcon,
                  width: 28),
              selectedIcon:
                  SvgPicture.asset(AssetsData.selectedProfileIcon, width: 28),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
