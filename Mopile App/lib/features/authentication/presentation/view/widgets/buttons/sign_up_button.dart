import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/core/widgets/custom_text.dart';
import 'package:qayedny/features/authentication/presentation/view/verify_email_screen.dart';

class SignUpButton extends StatelessWidget {
  final String name;
  final String username;
  final String password;
  final String phoneNumber;

  const SignUpButton({
    super.key,
    required this.username,
    required this.password,
    required this.name,
    required this.phoneNumber,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        safePrint(
            'email: $username, password: $password, name: $name, phoneNumber: $phoneNumber');
        signUpUser(
          username: username,
          password: password,
          name: name,
          phoneNumber: phoneNumber,
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
          text: "Sign Up",
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.w700,
          alignment: Alignment.center,
        ),
      ),
    );
  }

  Future<void> signUpUser({
    required String username,
    required String password,
    required String name,
    required String phoneNumber,
    context,
  }) async {
    safePrint("signUpUser called");
    try {
      final userAttributes = {
        AuthUserAttributeKey.name: name,
        AuthUserAttributeKey.phoneNumber: phoneNumber,
      };
      final result = await Amplify.Auth.signUp(
        username: username,
        password: password,
        options: SignUpOptions(
          userAttributes: userAttributes,
        ),
      );
      await _handleSignUpResult(result);
      GoRouter.of(context).push(VerifyEmailScreen.routeName, extra: {
        'email': username,
        'password': password,
        'name': name,
        'phoneNumber': phoneNumber,
      });
    } on AuthException catch (e) {
      safePrint('Error signing up user: ${e.message}');
    }
  }

  Future<void> _handleSignUpResult(SignUpResult result) async {
    switch (result.nextStep.signUpStep) {
      case AuthSignUpStep.confirmSignUp:
        final codeDeliveryDetails = result.nextStep.codeDeliveryDetails!;
        _handleCodeDelivery(codeDeliveryDetails);
        break;
      case AuthSignUpStep.done:
        safePrint('Sign up is complete');
        break;
    }
  }

  void _handleCodeDelivery(AuthCodeDeliveryDetails codeDeliveryDetails) {
    safePrint(
      'A confirmation code has been sent to ${codeDeliveryDetails.destination}. '
      'Please check your ${codeDeliveryDetails.deliveryMedium.name} for the code.',
    );
  }
}
