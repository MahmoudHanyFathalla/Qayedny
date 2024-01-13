import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';

class InputTextField extends StatelessWidget {
  final String text;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged; // Callback for text changes

  const InputTextField({
    super.key,
    required this.text,
    required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0), // Curved border
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kRoseColor,
          ), // Change the border color when focused
          borderRadius: BorderRadius.circular(30.0), // Curved border
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kYellowColor,
          ), // Change the border color when not focused
          borderRadius: BorderRadius.circular(30.0), // Curved border
        ),
        labelStyle: TextStyle(
          color: kBlueColor,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
        ),
        labelText: text,        
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
      ),
      controller: controller,
      onChanged: onChanged,
    );
  }
}
