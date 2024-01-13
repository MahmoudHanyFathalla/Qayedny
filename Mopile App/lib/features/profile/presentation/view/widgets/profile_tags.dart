import 'package:flutter/material.dart';

class ProfileTags extends StatelessWidget {
  final String title;
  final bool isSelected;
  const ProfileTags({super.key, required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: isSelected ? const Color(0xFFFAA034) : Colors.white,
        shape: RoundedRectangleBorder(
          side: isSelected
              ? const BorderSide(width: 0, color: Color(0xFFFAA034))
              : const BorderSide(width: 1, color: Color(0xFF0C3751)),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : const Color(0xFF0C3751),
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
              height: 0.10,
              letterSpacing: 0.08,
            ),
          ),
        ],
      ),
    );
  }
}
