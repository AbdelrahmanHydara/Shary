import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shary/core/helpers/spacing.dart';
import 'build_indicator_and_next_button.dart';
import 'onboarding_page_view.dart';

class OnBoardingScreenBody extends StatefulWidget {
  const OnBoardingScreenBody({super.key});

  @override
  State<OnBoardingScreenBody> createState() => _OnBoardingScreenBodyState();
}

class _OnBoardingScreenBodyState extends State<OnBoardingScreenBody> {

  int currentPage = 0;
  late PageController pageController;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24.r),
      child: Column(
        children: [
          Expanded(
              child: OnBoardingPageView(
                pageController: pageController,
              ),
          ),
          BuildIndicatorAndNextButton(
            currentPage: currentPage,
            pageController: pageController,
          ),
          verticalSpace(10),
        ],
      ),
    );
  }
}
