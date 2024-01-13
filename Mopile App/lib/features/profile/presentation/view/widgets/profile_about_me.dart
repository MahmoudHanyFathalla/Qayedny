import 'package:flutter/material.dart';

class ProfileAboutMe extends StatelessWidget {
  const ProfileAboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About me',
          style: TextStyle(
            color: Color(0xFFDD5465),
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        ),
        SizedBox(height: 5),
        Text(
          'I am Mohamed, a dedicated software engineer with a passion for coding and problem-solving. I thrive on challenges and enjoy creating innovative solutions that not only meet technical requirements but also make a positive impact.',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
