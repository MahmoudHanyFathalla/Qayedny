import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:qayedny/constants.dart';
import 'package:qayedny/core/widgets/custom_text.dart';
import 'package:qayedny/core/widgets/custom_price.dart';
import 'package:qayedny/features/home/presentation/view/widgets/project/project_tag.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: kGradientBorder,
          borderRadius: BorderRadius.circular(10.r),
          color: kCardBackgroundColor),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 12, bottom: 16, left: 12, right: 10).r,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: 'Content Writing Intern',
                  color: kBlueColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
                Spacer(),
                CustomPrice(text: '25 TPs', radius: 5)
              ],
            ),
            const Divider(color: Colors.grey, thickness: 1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AssetsData.clockIcon),
                    const SizedBox(width: 5),
                    const CustomText(
                      text: ' Oct 29,2023',
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(AssetsData.eyeIcon),
                    const SizedBox(width: 5),
                    const CustomText(
                      text: ' 130 views',
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Image(
                      image: AssetImage(AssetsData.proposalImage),
                    ),
                    SizedBox(width: 5),
                    CustomText(
                      text: ' 4 Proposal',
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(AssetsData.employeeIcon),
                    const SizedBox(width: 5),
                    const CustomText(
                      text: ' Invidual',
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            const CustomText(
              text:
                  'Are you passionate about the power of words? Do you have a flair for storytelling and a love for creativity? Look no further!',
              fontSize: 9,
              fontWeight: FontWeight.w400,
              color: kBlueColor,
            ),
            const SizedBox(height: 10),
            // last row contain tags in a border in a row in left and save icon and button view job to the right
            Row(
              children: [
                const ProjectTag(text: 'Front End Development'),
                const SizedBox(width: 10),
                const Spacer(),
                const Icon(
                  Icons.bookmark_outline,
                  color: kBlueColor,
                  size: 20,
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kYellowColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: CustomText(
                      text: 'View Job',
                      fontSize: 10,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
