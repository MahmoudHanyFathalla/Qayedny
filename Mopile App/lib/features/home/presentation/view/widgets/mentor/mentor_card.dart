import 'package:flutter/material.dart';

class MentorCard extends StatelessWidget {
  const MentorCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 108.6,
      height: 158,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          width: 1,
          color: const Color(0xFFFAA034),
        ),
        color: const Color(0xFFFFFFFF), // White background
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 91,
            height: 91,
            decoration: BoxDecoration(
              color: const Color(0xFFEFEFF0), // Circle background color
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                width: 1,
                color: const Color(0xFFFAA034), // Circle border color
              ),
            ),
            child: const Center(
              child: Icon(
                Icons.work, // Placeholder icon (you can change it)
                color: Color(0xFFFAA034), // Icon color
                size: 40,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Content Writing ', // First text
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: Colors.black, // Text color
            ),
          ),
          const Text(
            'Your Subtitle Here', // Second text
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF000000), // Text color
            ),
          ),
        ],
      ),
    );
  }
}
