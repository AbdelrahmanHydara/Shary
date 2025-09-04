import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shary/core/theming/app_colors.dart';
import 'package:shary/features/app_intro/onboarding/screens/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: const BouncingScrollPhysics(),
      children: [
        PageViewItem(
          title: "بيع واشتري بسهولة",
          subtitle: "مع شاري هتقدر تعرض كتبك وأدواتك اللي مش محتاجها، وتشتري اللي محتاجه من طلاب زيك بأمان وسهولة.",
          iconMain: FontAwesomeIcons.users,
          iconOne: FontAwesomeIcons.book,
          iconTwo: FontAwesomeIcons.screwdriverWrench,
          iconThree: FontAwesomeIcons.fileLines,
          labelOne: "كتب",
          labelTwo: "أدوات",
          labelThree: "ملخصات",
          colorCircle: Colors.blue[100],
          colorIcon: AppColors.blueMain,
        ),
        PageViewItem(
          title: "شارك مذكراتك وساعد زمايلك",
          subtitle: "شارك مذكراتك وملخصاتك بسهولة، وكمان تقدر تلاقي أو ترفع مذكرات تساعد زملاءك.",
          iconMain: FontAwesomeIcons.cartShopping,
          iconOne: FontAwesomeIcons.moneyBillWave,
          iconTwo: FontAwesomeIcons.clock,
          iconThree: FontAwesomeIcons.shieldHalved,
          labelOne: "أسعار مناسبة",
          labelTwo: "سرعة في الحصول",
          labelThree: "أمان وثقة",
          colorCircle: Colors.green.shade100,
          colorIcon: AppColors.primary,
        ),
      ],
    );
  }
}
