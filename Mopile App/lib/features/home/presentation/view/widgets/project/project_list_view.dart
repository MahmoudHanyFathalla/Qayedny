import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:qayedny/features/home/presentation/view/widgets/project/project_card.dart';
import 'package:qayedny/features/home/presentation/view/widgets/project/project_detail_screen.dart';

class ProjectListView extends StatelessWidget {
  const ProjectListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () => GoRouter.of(context).push(ProjectDetailScreen.routeName),
          child: Padding(
            padding: const EdgeInsets.only(right: 26, bottom: 10, left: 26,top: 10).r,
            child: const ProjectCard(),
          ),
        );
      },
    );
  }
}
