import 'package:flutter/material.dart';
import 'package:qayedny/constants.dart';

List<Tab> buildTabs(TabController tabController, List<String> tabTitles) {
  return List.generate(tabTitles.length, (index) {
    return Tab(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: tabController.index != index
              ? Border.all(color: kBlueColor) // Blue border for unselected tab
              : null, // No border for selected tab
          color: tabController.index != index
              ? null // White background for unselected tab
              : kYellowColor, // Yellow background for selected tab
        ),
        child: Center(
          child: Text(
            tabTitles[index],
            style: TextStyle(
              color: tabController.index != index
                  ? kBlueColor // Blue text color for unselected tab
                  : Colors.white, // White text color for selected tab
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  });
}
