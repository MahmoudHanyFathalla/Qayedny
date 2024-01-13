import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/core/widgets/bottom_navigation.dart';
import 'package:qayedny/features/authentication/data/models/EUserType.dart';
import 'package:qayedny/features/authentication/data/models/UserInfo.dart';
import 'package:qayedny/features/authentication/data/models/User_profile_model.dart';
import 'package:qayedny/features/authentication/data/repo/create_user.dart';
import 'package:qayedny/features/authentication/data/repo/create_user_info.dart';
import 'package:qayedny/features/authentication/data/repo/create_user_profile.dart';

class VerifyButton extends StatelessWidget {
  final String name;
  final String username;
  final String password;
  final String phoneNumber;
  final String confirmationCode;

  const VerifyButton({
    super.key,
    required this.username,
    required this.password,
    required this.name,
    required this.phoneNumber,
    required this.confirmationCode,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        safePrint(
            'email: $username, password: $password, name: $name, phoneNumber: $phoneNumber');
        confirmUser(
            username: username,
            confirmationCode: confirmationCode,
            context: context);
        Future<UserInfo?> userinfo = createUserInfo(
          name: name,
          email: username,
          password: password,
          mobile: phoneNumber,
        );
        Future<UserProfileModel?> rUserProfile = createUserProfile();
        Future<String?> id =
            Amplify.Auth.getCurrentUser().then((value) => value.userId);
        createUser(id, rUserProfile, userinfo, EUserType.STUDENT);
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: kYellowColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        minimumSize: const Size(200, 40),
      ),
      child: const Text(
        'Verify',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Future<void> confirmUser({
    required String username,
    required String confirmationCode,
    context,
  }) async {
    safePrint("confirmUser called");
    safePrint('username: $username, confirmationCode: $confirmationCode');
    try {
      final result = await Amplify.Auth.confirmSignUp(
        username: username,
        confirmationCode: confirmationCode,
      );
      safePrint(result);
      if (result.isSignUpComplete) {
        GoRouter.of(context).push(BottomNavigation.routeName);
      }
      safePrint('Sign up is complete');
      await _handleSignUpResult(result);
    } on AuthException catch (e) {
      safePrint('Error confirming user: ${e.message}');
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
