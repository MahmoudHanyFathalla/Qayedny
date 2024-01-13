import 'package:flutter/material.dart';

class ProfileNumbersItem extends StatelessWidget {
  final String numbers;
  final String text;
  const ProfileNumbersItem({super.key, required this.numbers, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Text(
            numbers,
            style: const TextStyle(
              color: Color(0xFF0C3751),
              fontSize: 22,
              fontStyle: FontStyle.italic,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          Text(
            text,
            maxLines: 1,
            style: const TextStyle(
              color: Color(0xFF0C3751),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          )
        ],
      ),
    );
  }
}
