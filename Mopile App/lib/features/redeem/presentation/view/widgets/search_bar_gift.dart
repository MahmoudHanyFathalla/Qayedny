import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qayedny/constants.dart';

class SearchBarGift extends StatelessWidget {
  const SearchBarGift({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, bottom: 12).r,
      child: SizedBox(
        width: 362,
        height: 44,
        child: TextField(
          decoration: InputDecoration(
            hintText: "Find a Coupons",
            hintStyle: const TextStyle(color: hintcolor),
            prefixIcon: const Icon(
              Icons.search,
              color: kBlueColor,
              size: 20,
            ),
            filled: true,
            fillColor: fill,
            contentPadding: const EdgeInsets.all(8),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(color: fill)),
          ),
        ),
      ),
    );
  }
}
