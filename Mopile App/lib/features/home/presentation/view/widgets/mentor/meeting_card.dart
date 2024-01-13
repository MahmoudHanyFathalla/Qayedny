import 'package:flutter/material.dart';

class MeetingCard extends StatelessWidget {
  const MeetingCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: ShapeDecoration(
          color: const Color(0x33FDF1E4),
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFFAA034)),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: Stack(
                children: [
                  Positioned(
                    left: 10,
                    top: 5,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: const Color(0xFFEFEFF0),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          width: 1,
                          color: const Color(0xFFFAA034),
                        ),
                      ),
                      child: const Icon(
                        Icons.work,
                        color: Color(0xFFFAA034),
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Meeting with Tom',
                  style: TextStyle(
                    color: Color(0xFF0C3751),
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                Text(
                  '45mins',
                  style: TextStyle(
                    color: Color(0x990C3751),
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 30
                ),
                Text(
                  'Today at 3:00 PM',
                  style: TextStyle(
                    color: Color(0x990C3751),
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
