import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/core/widgets/custom_text.dart';
import 'package:qayedny/features/authentication/presentation/view/sign_up_screen.dart';

// Combine "Don't have an account? " and "Sign up" on the same line
class SwitchToSignUpButton extends StatelessWidget {
  const SwitchToSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomText(
            text: "Don't have an account?",
            fontSize: 12,
            color: Colors.grey.shade600,
            fontWeight: FontWeight.w300),
        TextButton(
          onPressed: () {
            GoRouter.of(context).push(SignUpScreen.routeName);
          },
          child: const CustomText(
              text: "Sign up",
              fontSize: 12,
              color: kRoseColor,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
