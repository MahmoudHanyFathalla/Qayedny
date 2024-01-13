import 'package:flutter/material.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/core/widgets/custom_text.dart';

class RememberMeAndForgetPass extends StatelessWidget {
  const RememberMeAndForgetPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Checkbox(value: false, onChanged: (bool? value) {}),
            const CustomText(text: "Remember me", fontSize: 14, color: kBlueColor, fontWeight: FontWeight.w300),
          ],
        ),
        TextButton(
          onPressed: () {
            // Add your logic for "Forgot Your Password" here
          },
          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(const TextStyle(decoration: TextDecoration.underline)),
          ),
          child: const CustomText(text: "Forgot Password?", fontSize: 14, color: kBlueColor, fontWeight: FontWeight.w300)
        ),
      ],
    );
  }
}
