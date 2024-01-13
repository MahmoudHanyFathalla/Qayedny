import 'package:flutter/material.dart';
import 'package:qayedny/features/home/presentation/view/widgets/mentor/meeting_card.dart';

class MeetingListView extends StatelessWidget {
  const MeetingListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.vertical, // Ensure vertical scrolling
      child: Column(
        // Use a Column to display the cards vertically
        children: [
          MeetingCard(),
          SizedBox(height: 5),
          MeetingCard(),
          SizedBox(height: 5),
          MeetingCard(),
        ],
      ),
    );
  }
}
