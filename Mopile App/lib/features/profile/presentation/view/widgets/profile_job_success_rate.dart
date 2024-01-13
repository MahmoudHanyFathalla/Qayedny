import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProfileJobSuccessRate extends StatelessWidget {
  const ProfileJobSuccessRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Opacity(
              opacity: 0.80,
              child: Text(
                'Job success rate',
                style: TextStyle(
                  color: Color(0xFFDD5465),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            Text(
              '85%',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Color(0xFF0C3751),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
                height: 0,
              ),
            )
          ],
        ),
        const SizedBox(height: 5),
        LinearPercentIndicator(
          width: MediaQuery.of(context).size.width - 40,
          lineHeight: 8,
          percent: 0.85,
          animation: true,
          animationDuration: 2500,
          barRadius: const Radius.circular(16),
          progressColor: const Color(0xFF0C3751),
        ),
      ],
    );
  }
}
