import 'package:flutter/material.dart';
import 'package:qayedny/core/widgets/side_appbar.dart';

import '../../../../core/widgets/custom_end_drawer.dart';
import '../../../../core/widgets/side_bar.dart';

class FaqsViewScreen extends StatelessWidget {
  static const routeName = '/faqsViewScreen';

  const FaqsViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SideAppBar(title: 'FAQs'),
      endDrawer: const CustomEndDrawerAnimation(drawer: Sidebar()),
      body: Container(),
    );
  }
}
