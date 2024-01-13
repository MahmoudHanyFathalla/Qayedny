import 'package:flutter/material.dart';
import 'package:qayedny/core/widgets/custom_end_drawer.dart';
import 'package:qayedny/features/home/presentation/view/widgets/tabbed_list_view.dart';
import '../../../../core/widgets/main_appbar.dart';
import '../../../../core/widgets/side_bar.dart';

class HomeViewScreen extends StatelessWidget {
  static const routeName = '/homeViewScreen';

  const HomeViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      endDrawer: CustomEndDrawerAnimation(drawer: Sidebar()),
      appBar: MainAppBar(),
      // Add this line to display mentor cards horizontally
      body: TabbedListView(),
    );
  }
}
