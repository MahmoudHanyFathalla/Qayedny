import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/features/home/presentation/view/widgets/mentor/mentor_detail_screen.dart';
import 'package:qayedny/features/home/presentation/view/widgets/project/project_list_view.dart';
import 'package:qayedny/features/home/presentation/view/widgets/service/service_list_view.dart';
import 'package:qayedny/features/home/presentation/view/widgets/tabs.dart';

class TabbedListView extends StatefulWidget {
  const TabbedListView({super.key});

  @override
  State<TabbedListView> createState() => _TabbedListViewState();
}

class _TabbedListViewState extends State<TabbedListView>
    with TickerProviderStateMixin {
  late TabController _tabController;
  final List<String> tabTitles = [
    'Projects',
    'Services',
    'Mentor',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabTitles.length, vsync: this);

    // Add a listener to the TabController to update the state when tab changes occur
    _tabController.addListener(() {
      setState(() {}); // Update the state when the tab changes
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(ScreenUtil().setHeight(65)),
        child: Padding(
          padding: const EdgeInsets.only(right: 26, left: 26).r,
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            bottom: TabBar(
              controller: _tabController,
              tabs: buildTabs(_tabController, tabTitles),
              
              labelColor: Colors.white,
              unselectedLabelColor: kBlueColor,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color:
                    kYellowColor, // Yellow background for selected tab (indicator)
              ),
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 10),
              indicatorWeight: 0, // Remove the default underline indicator
              labelPadding: const EdgeInsets.symmetric(horizontal: 10),
              labelStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        // disable swipe
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          ProjectListView(),
          ServiceListView(),
          MentorDetailScreen(),
        ],
      ),
    );
  }
}
