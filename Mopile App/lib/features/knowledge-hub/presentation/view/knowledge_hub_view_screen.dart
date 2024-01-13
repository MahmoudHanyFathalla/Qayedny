import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:qayedny/constants.dart';
import 'package:qayedny/core/widgets/custom_end_drawer.dart';
import 'package:qayedny/core/widgets/custom_text.dart';
import 'package:qayedny/features/knowledge-hub/presentation/view/widgets/knowledge_hub_card.dart';
import '../../../../core/widgets/side_bar.dart';

class KnowledgeHubViewScreen extends StatefulWidget {
  static const routeName = '/knowledge-hub';

  const KnowledgeHubViewScreen({super.key});

  @override
  State<StatefulWidget> createState() => _KnowledgeHubState();
}

class _KnowledgeHubState extends State<KnowledgeHubViewScreen> {
  int size = 5;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    void navigateToHome() {
      Navigator.of(context).popUntil((route) => route.isFirst);
    }

    return Scaffold(
      key: _scaffoldKey,
      endDrawer: const CustomEndDrawerAnimation(drawer: Sidebar()),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: navigateToHome,
          icon: const Icon(Icons.arrow_back, color: kBlueColor),
        ),
        elevation: 0,
        title: const CustomText(
          text: "Knowledge Hub",
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        actions: [
          IconButton(
            // open sidebar drawer when pressed on the icon button in the appbar SideAppBar
            onPressed: () {
              _scaffoldKey.currentState?.openEndDrawer();
            },
            icon: SvgPicture.asset(AssetsData.listIcon),
          ),
        ],
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 12, right: 12, bottom: 12, top: 25),
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            // Display two containers in a row
            return const Column(
              children: [
                KnowledgeHubContainers(),
                SizedBox(height: 15),
                // Add spacing between containers
              ],
            );
          },
        ),
      ),
    );
  }
}
