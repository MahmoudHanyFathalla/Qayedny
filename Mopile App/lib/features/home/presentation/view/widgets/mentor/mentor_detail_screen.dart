import 'package:flutter/material.dart';
import 'package:qayedny/features/home/presentation/view/widgets/mentor/meeting_list_view.dart';
import 'package:qayedny/features/home/presentation/view/widgets/mentor/mentor_list_view.dart';

class MentorDetailScreen extends StatelessWidget {
  static const routeName = '/mentordetailscreen';

  const MentorDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16, top: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended mentors',
                  style: TextStyle(
                    color: Color(0xFFDD5464),
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                    letterSpacing: 0.16,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Show All',
                  style: TextStyle(
                    color: Color(0xFFDD5464),
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    letterSpacing: 0.16,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 158, // Set the desired height
            child: MentorListView(), // Display mentor cards horizontally
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 16, top: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Upcoming meetings',
                  style: TextStyle(
                    color: Color(0xFFDD5464),
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                    letterSpacing: 0.16,
                  ),
                ),
                Text(
                  'Show All',
                  style: TextStyle(
                    color: Color(0xFFDD5464),
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w600,
                    height: 1.5,
                    letterSpacing: 0.16,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          MeetingListView()
        ],
      ),
    );
  }
}
