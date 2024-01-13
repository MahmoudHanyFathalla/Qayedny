import 'package:amplify_auth_cognito/amplify_auth_cognito.dart';
import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/core/widgets/bottom_navigation.dart';
import 'package:qayedny/core/widgets/custom_text.dart';

class SignInButton extends StatelessWidget {
  final String username;
  final String password;

  const SignInButton({
    super.key,
    required this.username,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          safePrint('username: $username, password: $password');
          signInUser(
            username: username,
            password: password,
            context: context,
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: kYellowColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0).r,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0).r,
          child: const CustomText(
            text: "Log In",
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w700,
            alignment: Alignment.center,
          ),
        ));
  }

  Future<void> signInUser(
      {required String username, required String password, context}) async {
    try {
      final result = await Amplify.Auth.signIn(
        username: username,
        password: password,
      );
      safePrint(result.toString());
      // handle with signInStep status
      if (result.isSignedIn) {
        GoRouter.of(context).go(BottomNavigation.routeName);
      }
    }
    on AuthException catch (e) {
      safePrint('Error signing in: ${e.message}');
    }
  }
}
