import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/core/widgets/appbar_login.dart';
import 'package:qayedny/core/widgets/custom_text.dart';
import 'package:qayedny/features/authentication/presentation/view/widgets/buttons/sign_in_with_google.dart';
import 'package:qayedny/features/authentication/presentation/view/widgets/buttons/sign_up_button.dart';
import 'package:qayedny/features/authentication/presentation/view/widgets/dropdown_field.dart';
import 'package:qayedny/features/authentication/presentation/view/widgets/input_text_field.dart';
import 'package:qayedny/features/authentication/presentation/view/widgets/or_login_with_text.dart';

class SignUpScreen extends StatefulWidget {
  static const routeName = '/signUpPage';

  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? dropdownValue;

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: loginScreenAppbar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 16.h),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 12, bottom: 12)
                      .r,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(
                        text: "Create Your Account",
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(.0),
                child: Container(
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      border: kGradientBorderauth),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InputTextField(
                        text: 'Name',
                        controller: nameController,
                        onChanged: (value) => {
                          setState(() {
                            nameController.text = value;
                          })
                        },
                      ),
                      SizedBox(height: 16.h),
                      InputTextField(
                        text: 'Email',
                        controller: emailController,
                        onChanged: (value) => {
                          setState(() {
                            emailController.text = value;
                          })
                        },
                      ),
                      SizedBox(height: 16.h),
                      InputTextField(
                        text: 'Password',
                        controller: passwordController,
                        onChanged: (value) => {
                          setState(() {
                            passwordController.text = value;
                          })
                        },
                      ),
                      SizedBox(height: 16.h),
                      InputTextField(
                        text: "Confirm Password",
                        controller: passwordController,
                        onChanged: (value) => {
                          setState(() {
                            passwordController.text = value;
                          })
                        },
                      ),
                      SizedBox(height: 16.h),
                      DropdownField(
                          text: 'Select your personal journey',
                          dropdownItems: const [
                            'Student',
                            'Freelancer',
                            'Professional'
                          ],
                          value: dropdownValue,
                          onChanged: (newValue) {
                            setState(() {
                              dropdownValue = newValue;
                            });
                          }),
                      SizedBox(height: 16.h),
                      InputTextField(
                        text: "Phone Number",
                        controller: phoneNumberController,
                        onChanged: (value) => {
                          setState(() => phoneNumberController.text = value)
                        },
                      ),
                      SizedBox(height: 16.h),
                      SignUpButton(
                          name: nameController.text,
                          username: emailController.text,
                          password: passwordController.text,
                          phoneNumber: phoneNumberController.text),
                      const OrLoginWithText(),
                      const SignInWithGoogle(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
