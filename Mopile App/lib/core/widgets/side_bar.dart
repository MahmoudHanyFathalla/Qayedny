import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import 'package:qayedny/constants.dart';
import 'package:qayedny/core/widgets/custom_text.dart';
import 'package:qayedny/features/authentication/presentation/view/login_view_screen.dart';
import 'package:qayedny/features/knowledge-hub/presentation/view/knowledge_hub_view_screen.dart';
import 'package:qayedny/features/static/presentation/view/blogs_view_screen.dart';
import 'package:qayedny/features/static/presentation/view/faqs_view_screen.dart';
import 'package:qayedny/features/static/presentation/view/sdgs_view_screen.dart';
import 'package:qayedny/features/subscription/presentation/view/subscription_view_screen.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({Key? key}) : super(key: key);

  void handleOnTap(BuildContext context, String routeName) {
    Navigator.pop(context);
    Navigator.of(context).popUntil((route) => route.isFirst);
    GoRouter.of(context).push(routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.r), bottomLeft: Radius.circular(40.r)),
      ),
      child: ListView(
        padding: EdgeInsets.only(left: 15.w),
        children: <Widget>[
          SizedBox(
            height: 200.h,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                // color: Colors.white,
              ),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset(AssetsData.xIcon),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topLeft,
                    child: CustomText(
                      text: "Wallet Funds",
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(
                    width: 215.w,
                    height: 54.h,
                    decoration: BoxDecoration(
                      color: kYellowColor,
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    padding: const EdgeInsets.only(
                      top: 11,
                      left: 20,
                      right: 60,
                      bottom: 1,
                    ).r,
                    child: Row(
                      children: [
                        SvgPicture.asset(AssetsData.coinsIcon),
                        SizedBox(
                          width: 20.w,
                        ),
                        const CustomText(
                          text: '50 TPs',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,

                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Image.asset(AssetsData.promoCodeImage),
            title: const CustomText(text: 'Add Promocode', fontWeight: FontWeight.w700,),
            onTap: () => handleOnTap(context, SdgsViewScreen.routeName),
          ),
          ExpansionTile(
            shape: const Border(),
            leading: SvgPicture.asset(AssetsData.myWorkIcon),
            title: const CustomText(text: 'My Work', color: kYellowColor, fontWeight: FontWeight.w700,),
            trailing: SvgPicture.asset(AssetsData.arrowDownIcon),
            children: [
              Column(
                children: [
                  ListTile(
                    leading: SvgPicture.asset(AssetsData.postedProjectsIcon),
                    title: const CustomText(text:'Posted Services', fontWeight: FontWeight.w700,),
                    onTap: () => handleOnTap(context, '/option1'),
                  ),
                  ListTile(
                    leading: SvgPicture.asset(AssetsData.appliedServicesIcon),
                    title: const CustomText(text:'Applied Services', fontWeight: FontWeight.w700,),
                    onTap: () => handleOnTap(context, '/option2'),
                  ),
                  ListTile(
                    leading: SvgPicture.asset(AssetsData.postedProjectsIcon),
                    title: const CustomText(text:'Posted Projects', fontWeight: FontWeight.w700,),
                    onTap: () => handleOnTap(context, '/option3'),
                  ),
                  ListTile(
                    leading: SvgPicture.asset(AssetsData.appliedProjectsIcon),
                    title: const CustomText(text:'Applied Projects', fontWeight: FontWeight.w700,),
                    onTap: () => handleOnTap(context, '/option4'),
                  ),
                ],
              ),
            ],
          ),
          Divider(color: Colors.grey.shade400, thickness: 1),
          ListTile(
            leading: SvgPicture.asset(AssetsData.knowledgeHubIcon),
            title: const CustomText(text: 'Knowledge Hub', fontWeight: FontWeight.w700,),
            onTap: () => handleOnTap(context, KnowledgeHubViewScreen.routeName),
          ),
          ListTile(
            leading: SvgPicture.asset(AssetsData.supportIcon),
            title: const CustomText(text: 'Qayedny Supporters', fontWeight: FontWeight.w700,),
            onTap: () => handleOnTap(context, '/supporters'),
          ),
          ListTile(
            leading: SvgPicture.asset(AssetsData.subscriptionIcon),
            title: const CustomText(text: 'Subscription', fontWeight: FontWeight.w700,),
            onTap: () => handleOnTap(context, SubscriptionViewScreen.routeName),
          ),
          ListTile(
            leading: SvgPicture.asset(AssetsData.settingsIcon),
            title: const CustomText(text: 'Settings', fontWeight: FontWeight.w700,),
            onTap: () => handleOnTap(context, '/settings'),
          ),
          Divider(color: Colors.grey.shade400, thickness: 1),
          ListTile(
            leading: SvgPicture.asset(AssetsData.faqsIcon),
            title: const CustomText(text: 'FAQs', fontWeight: FontWeight.w700,),
            onTap: () => handleOnTap(context, FaqsViewScreen.routeName),
          ),
          ListTile(
            leading: SvgPicture.asset(AssetsData.blogIcon),
            title: const CustomText(text: 'Blogs', fontWeight: FontWeight.w700,),
            onTap: () => handleOnTap(context, BlogsViewScreen.routeName),
          ),
          ListTile(
            leading: SvgPicture.asset(AssetsData.sdgsIcon),
            title: const CustomText(text: 'SDGs', fontWeight: FontWeight.w700,),
            onTap: () => handleOnTap(context, SdgsViewScreen.routeName),
          ),
          Divider(color: Colors.grey.shade400, thickness: 1),
          ListTile(
            leading: SvgPicture.asset(AssetsData.helpIcon),
            title: const CustomText(text: 'Help Center', fontWeight: FontWeight.w700,),
            onTap: () => handleOnTap(context, '/helpCenter'),
          ),
          Divider(color: Colors.grey.shade400, thickness: 1),
          ListTile(
            leading: SvgPicture.asset(AssetsData.logoutIcon),
            title: const CustomText(text: 'Logout', color: kBlueColor, fontWeight: FontWeight.w700,),
            onTap: () {
              signOutCurrentUser();
              GoRouter.of(context).push(LoginViewScreen.routeName);
            },
          ),
        ],
      ),
    );
  }

  Future<void> signOutCurrentUser() async {
    // print the current user
    // final currentUser = await Amplify.Auth.getCurrentUser();
    // safePrint(currentUser.userId);
    final result = await Amplify.Auth.signOut();
    if (result is CognitoCompleteSignOut) {
      safePrint('Sign out completed successfully');
    } else if (result is CognitoFailedSignOut) {
      safePrint('Error signing user out: ${result.exception.message}');
    }
  }
}
