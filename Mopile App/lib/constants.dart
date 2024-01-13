import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

const kBlueColor = Color.fromRGBO(12, 55, 81, 1);
const kLightBlueColor = Color.fromRGBO(12, 55, 81, 0.5);
const kYellowColor = Color.fromRGBO(250, 160, 52, 1);
const kDarkYellowColor = Color.fromRGBO(255, 139, 0, 1);
const kRoseColor = Color.fromRGBO(221, 84, 100, 1);
const kBackgroundColor = Color.fromRGBO(255, 255, 255, 1);
const kCardBackgroundColor = Color.fromRGBO(254, 251, 246, 1);
const hintcolor = Color.fromRGBO(175, 177, 182, 1);
const fill = Color.fromRGBO(239, 239, 240, 1);

const kGradientBorder = GradientBoxBorder(
    gradient: LinearGradient(
        colors: [kRoseColor, kYellowColor],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter),
    width: 1);

const kGradientBorderauth = GradientBoxBorder(
    gradient: LinearGradient(
        colors: [kRoseColor, kYellowColor],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter),
    width: 3);

final kGradientBoxDecoration = BoxDecoration(
  gradient: const LinearGradient(
    colors: [kYellowColor, kRoseColor],
  ),
  border: Border.all(
    color: Colors.black,
  ),
  borderRadius: BorderRadius.circular(32),
);
final kInnerDecoration = BoxDecoration(
  color: Colors.white,
  border: Border.all(color: Colors.white),
  borderRadius: BorderRadius.circular(32),
);

class AssetsData {
  static const textChatImage = 'assets/icons/TextChat.png';
  static const logoImage = 'assets/images/logo.jpg';
  static const authIcon = 'assets/icons/AuthBackground.png';

  static const bellRingingIcon = 'assets/icons/BellRinging.svg';
  static const clockIcon = 'assets/icons/Clock.svg';
  static const employeeIcon = 'assets/icons/Employee.svg';
  static const filterIcon = 'assets/icons/Filter.svg';
  static const listIcon = 'assets/icons/List.svg';
  static const plusCircleIcon = 'assets/icons/PlusCircle.svg';
  static const eyeIcon = 'assets/icons/Eye.svg';
  static const xIcon = 'assets/icons/X.svg';
  static const infoIcon = 'assets/icons/Info.svg';
  static const shareIcon = 'assets/icons/Share.svg';
  static const backArrowIcon = 'assets/icons/BackArrow.svg';
  static const proposalImage = 'assets/icons/Proposal.png';
  static const dashedIcon = 'assets/icons/dashed.svg';

  // Bottom Navigation Bar Icons
  static const notSelectedMessagingIcon = 'assets/icons/notSelectedMessagingIcon.svg';
  static const selectedMessagingIcon = 'assets/icons/selectedMessagingIcon.svg';
  static const notSelectedHomeIcon = 'assets/icons/notSelectedHomeIcon.svg';
  static const selectedHomeIcon = 'assets/icons/selectedHomeIcon.svg';
  static const notSelectedRedeemIcon = 'assets/icons/notSelectedRedeemIcon.svg';
  static const selectedRedeemIcon = 'assets/icons/selectedRedeemIcon.svg';
  static const notSelectedProfileIcon = 'assets/icons/notSelectedProfileIcon.svg';
  static const selectedProfileIcon = 'assets/icons/selectedProfileIcon.svg';

  // Side bar icons
  static const myWorkIcon = 'assets/icons/side-bar/MyWork.svg';
  static const coinsIcon = 'assets/icons/side-bar/Coins.svg';
  static const settingsIcon = 'assets/icons/side-bar/Setting.svg';
  static const faqsIcon = 'assets/icons/side-bar/Faqs.svg';
  static const knowledgeHubIcon = 'assets/icons/side-bar/KnowledgeHub.svg';
  static const sdgsIcon = 'assets/icons/side-bar/Sdgs.svg';
  static const helpIcon = 'assets/icons/side-bar/HelpCenter.svg';
  static const subscriptionIcon = 'assets/icons/side-bar/Subscription.svg';
  static const supportIcon = 'assets/icons/side-bar/Support.svg';
  static const blogIcon = 'assets/icons/side-bar/Blogs.svg';
  static const arrowDownIcon = 'assets/icons/side-bar/ArrowDown.svg';
  static const logoutIcon = 'assets/icons/side-bar/logout.svg';
  static const appliedProjectsIcon =
      'assets/icons/side-bar/AppliedProjects.svg';
  static const postedProjectsIcon = 'assets/icons/side-bar/PostedProjects.svg';
  static const appliedServicesIcon =
      'assets/icons/side-bar/AppliedServices.svg';
  static const postedServicesIcon = 'assets/icons/side-bar/PostedServices.svg';
  static const promoCodeImage = 'assets/icons/side-bar/Promocode.png';
}
