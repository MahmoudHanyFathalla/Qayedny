import 'package:flutter/material.dart';

import '../../../../../core/widgets/rating_out_of_five.dart';
import 'profile_numbers_item.dart';

class ProfileNumbers extends StatelessWidget {
  const ProfileNumbers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Divider(),
        SizedBox(height: 5),
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileNumbersItem(numbers: '55', text: 'Worked Hr'),
              VerticalDivider(),
              ProfileNumbersItem(numbers: '15', text: 'Completed jobs'),
              VerticalDivider(),
              Column(
                children: [
                  ProfileNumbersItem(numbers: '3/5', text: 'Rating'),
                  RatingOutOfFive(),
                ],
              ),
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
