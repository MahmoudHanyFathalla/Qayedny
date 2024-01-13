import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:qayedny/constants.dart';
import 'package:qayedny/features/authentication/presentation/view/widgets/buttons/sign_in_button.dart';
import 'package:qayedny/features/authentication/presentation/view/widgets/buttons/sign_in_with_google.dart';
import 'package:qayedny/features/authentication/presentation/view/widgets/buttons/switch_to_sign_up_button.dart';

import 'widgets/input_text_field.dart';
import 'widgets/or_login_with_text.dart';
import 'widgets/remember_me_and_forget_pass.dart';

import 'widgets/welcome_text.dart';

class LoginViewScreen extends StatefulWidget {
  static const routeName = '/loginViewScreen';

  const LoginViewScreen({super.key});

  @override
  State<LoginViewScreen> createState() => _LoginViewScreenState();
}

class _LoginViewScreenState extends State<LoginViewScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const WelcomeText(),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 182.w, maxHeight: 164.h),
                      child: Image.asset(AssetsData.authIcon, fit: BoxFit.fill),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(right: 33, left: 33, top: 80).r,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0).r,
                  border: kGradientBorderauth,
                ),
                // height: MediaQuery.of(context).size.height * 0.75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InputTextField(
                      text: 'Email',
                      controller: emailController,
                      onChanged: (value) {
                        setState(() {
                          emailController.text = value;
                        });
                      },
                    ),
                    SizedBox(height: 16.h),
                    InputTextField(
                      text: 'Password',
                      controller: passwordController,
                      onChanged: (value) {
                        setState(() {
                          passwordController.text = value;
                        });
                      },
                    ),
                    const RememberMeAndForgetPass(),
                    SizedBox(height: 66.h),
                    SignInButton(
                      username: emailController.text,
                      password: passwordController.text,
                    ),
                    SizedBox(height: 39.h),
                    const OrLoginWithText(),
                    SizedBox(height: 27.h),
                    const SignInWithGoogle(),
                    SizedBox(height: 42.h),
                    const SwitchToSignUpButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
