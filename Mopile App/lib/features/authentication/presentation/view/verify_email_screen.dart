import 'package:flutter/material.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/features/authentication/presentation/view/widgets/buttons/verify_button.dart';
import 'package:qayedny/features/authentication/presentation/view/widgets/input_text_field.dart';

import '../../../../core/widgets/appbar_login.dart';

class VerifyEmailScreen extends StatelessWidget {
  static const routeName = '/verifyEmailPage';

  final String name;
  final String email;
  final String password;
  final String phoneNumber;

  VerifyEmailScreen(
      {Key? key,
      required this.email,
      required this.name,
      required this.password, 
      required this.phoneNumber})
      : super(key: key);

  final TextEditingController confirmCodeController = TextEditingController();

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
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 12, bottom: 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Verify tour Email',
                        style: TextStyle(
                          color: kRoseColor,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'We really miss you',
                        style: TextStyle(
                          color: kRoseColor,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
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
                    border: Border.all(color: kRoseColor),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InputTextField(
                          text: "Confirmaiton Code",
                          controller: confirmCodeController,
                          onChanged: (value) =>
                              {confirmCodeController.text = value}),
                      const SizedBox(height: 16),
                      VerifyButton(
                        username: email,
                        password: password,
                        name: name,
                        phoneNumber: phoneNumber,
                        confirmationCode: confirmCodeController.text,
                      )
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
