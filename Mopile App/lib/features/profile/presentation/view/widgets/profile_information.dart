
import 'package:flutter/material.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({super.key});

  @override
  Widget build(BuildContext context) {
    // User information in a Row
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Display user profile picture
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            color: Color(0xFFC0C0C0),
            shape: CircleBorder(),
          ),
          child: const CircleAvatar(
            radius: 24,
            backgroundImage: AssetImage('assets/images/appIcon.jpeg'),
          ),
        ),
        const SizedBox(width: 20),
        // Display user name
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Mohammed Kamal',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              'software engineer',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}
