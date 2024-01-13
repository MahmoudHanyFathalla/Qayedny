import 'package:flutter/material.dart';
import 'package:qayedny/features/home/presentation/view/widgets/mentor/mentor_card.dart';

class MentorListView extends StatelessWidget {
  const MentorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10, // You can change the number of cards here
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: MentorCard(),
        );
      },
    );
  }
}
