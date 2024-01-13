import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qayedny/core/widgets/bottom_navigation.dart';
import 'package:qayedny/features/authentication/presentation/view/login_view_screen.dart';
import 'package:qayedny/features/home/presentation/view/widgets/project/project_detail_screen.dart';
import 'package:qayedny/features/home/presentation/view/widgets/service/service_detail_screen.dart';
import 'package:qayedny/features/knowledge-hub/presentation/view/knowledge_hub_view_screen.dart';

import 'package:qayedny/features/messaging/presentation/view/messaging_view_screen.dart';
import 'package:qayedny/features/redeem/presentation/view/redeem_view_screen.dart';
import 'package:qayedny/features/static/presentation/view/blogs_view_screen.dart';
import 'package:qayedny/features/static/presentation/view/faqs_view_screen.dart';
import 'package:qayedny/features/static/presentation/view/sdgs_view_screen.dart';
import 'package:qayedny/features/subscription/presentation/view/subscription_view_screen.dart';
import '../../features/home/presentation/view/home_view_screen.dart';
import '../../features/profile/presentation/view/profile_view_screen.dart';
import '../../features/splash/presentation/view/splash_screen.dart';
import '../../features/authentication/presentation/view/sign_up_screen.dart';
import '../../features/authentication/presentation/view/verify_email_screen.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: SplashScreen.routeName,
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: BottomNavigation.routeName,
        builder: (context, state) => const BottomNavigation(),
      ),
      GoRoute(
        path: HomeViewScreen.routeName,
        builder: (context, state) => const HomeViewScreen(),
      ),
      GoRoute(
          path: RedeemViewScreen.routeName,
          builder: (context, state) => const RedeemViewScreen()),
      GoRoute(
        path: ProfileViewScreen.routeName,
        builder: (context, state) => const ProfileViewScreen(),
      ),
      GoRoute(
        path: MessagingViewScreen.routeName,
        builder: (context, state) => const MessagingViewScreen(),
      ),
      GoRoute(
        path: FaqsViewScreen.routeName,
        builder: (context, state) => const FaqsViewScreen(),
      ),
      GoRoute(
        path: SubscriptionViewScreen.routeName,
        builder: (context, state) => const SubscriptionViewScreen(),
      ),
      GoRoute(
        path: BlogsViewScreen.routeName,
        builder: (context, state) => const BlogsViewScreen(),
      ),
      GoRoute(
        path: SdgsViewScreen.routeName,
        builder: (context, state) => const SdgsViewScreen(),
      ),
      GoRoute(
        path: KnowledgeHubViewScreen.routeName,
        builder: (context, state) => const KnowledgeHubViewScreen(),
      ),
      GoRoute(
        path: ProjectDetailScreen.routeName,
        builder: (context, state) => const ProjectDetailScreen(
            projectName: 'projectName',
            projectDescription: 'projectDescription'),
      ),
      GoRoute(
        path: LoginViewScreen.routeName,
        builder: (context, state) => const LoginViewScreen(),
      ),
      GoRoute(
        path: SignUpScreen.routeName,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: VerifyEmailScreen.routeName,
        builder: (context, state) => VerifyEmailScreen(
            email: state.extra.toString(),
            name: state.extra.toString(),
            password: state.extra.toString(),
            phoneNumber: state.extra.toString()
        )
      ),
      GoRoute(
          path: ServiceDetailScreen.routeName,
          builder: (context, state) => const ServiceDetailScreen()),
    ],
  );
}

