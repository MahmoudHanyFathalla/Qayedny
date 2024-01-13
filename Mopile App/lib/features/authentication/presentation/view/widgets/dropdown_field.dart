import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../constants.dart';

class DropdownField extends StatelessWidget {
  final String text;
  final List<String> dropdownItems;
  final String? value;
  final ValueChanged<String?>? onChanged;

  const DropdownField({
    Key? key,
    required this.text,
    required this.dropdownItems,
    this.value,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kRoseColor,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kYellowColor,
          ),
          borderRadius: BorderRadius.circular(30.0),
        ),
        labelText: text,
        labelStyle: TextStyle(
          color: kBlueColor,
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
          fontFamily: 'Poppins',
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        floatingLabelAlignment: FloatingLabelAlignment.start,
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
      ),
      value: value,
      onChanged: onChanged,
      items: dropdownItems.map((String item) {
        return DropdownMenuItem<String>(
          value: item,
          child: Text(item),
        );
      }).toList(),
    );
  }
}
