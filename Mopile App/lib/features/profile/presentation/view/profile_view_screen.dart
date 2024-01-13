import 'package:flutter/material.dart';
import 'package:qayedny/core/widgets/custom_end_drawer.dart';
import 'package:qayedny/core/widgets/main_appbar.dart';
import 'package:qayedny/core/widgets/side_bar.dart';
import 'package:qayedny/features/profile/presentation/view/widgets/profile_about_me.dart';
import 'package:qayedny/features/profile/presentation/view/widgets/profile_information.dart';
import 'package:qayedny/features/profile/presentation/view/widgets/profile_job_success_rate.dart';
import 'package:qayedny/features/profile/presentation/view/widgets/profile_numbers.dart';
import 'package:qayedny/features/profile/presentation/view/widgets/profile_tags.dart';

class ProfileViewScreen extends StatelessWidget {
  static const routeName = '/profileViewScreen';

  const ProfileViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(),
      endDrawer: CustomEndDrawerAnimation(drawer: Sidebar()),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 16, top: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                      color: Color(0xFFDD5464),
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                      letterSpacing: 0.16,
                    ),
                  ),
                  Text(
                    'Total tps: 40',
                    style: TextStyle(
                      color: Color(0xFFDD5464),
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      height: 1.5,
                      letterSpacing: 0.16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              ProfileInformation(),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              ProfileJobSuccessRate(),
              SizedBox(height: 10),
              Divider(),
              SizedBox(height: 10),
              // Tags
              Row(
                children: [
                  ProfileTags(title: 'Personal Info', isSelected: true),
                  SizedBox(width: 5),
                  ProfileTags(title: 'Experience', isSelected: false),
                  SizedBox(width: 5),
                  ProfileTags(title: 'Top Skills', isSelected: false),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  ProfileTags(title: 'Reviews', isSelected: false),
                  SizedBox(width: 5),
                  ProfileTags(title: 'Servies', isSelected: false),
                  SizedBox(width: 5),
                  ProfileTags(title: 'Projects', isSelected: false),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
              ProfileAboutMe(),
              SizedBox(height: 10),
              ProfileNumbers(),
            ],
          ),
        ),
      ),
    );
  }
}
