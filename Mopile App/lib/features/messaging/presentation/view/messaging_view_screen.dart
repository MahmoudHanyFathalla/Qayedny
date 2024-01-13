import 'package:flutter/material.dart';
import 'package:qayedny/core/widgets/custom_end_drawer.dart';
import 'package:qayedny/core/widgets/side_bar.dart';
import 'package:qayedny/features/messaging/presentation/view/widgets/messaging_page.dart';
import '../../../../core/widgets/main_appbar.dart';

class MessagingViewScreen extends StatelessWidget {
  static const routeName = '/messagingViewScreen';

  const MessagingViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      endDrawer: CustomEndDrawerAnimation(drawer: Sidebar()),
      appBar: MainAppBar(),
      body: MessagingPage(),
    );
  }
}
