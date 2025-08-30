import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shary/core/routing/routes.dart';
import 'package:shary/core/theming/app_colors.dart';
import 'package:shary/core/theming/app_text_styles.dart';

class BuildIndicatorAndNextButton extends StatelessWidget {
  const BuildIndicatorAndNextButton({super.key, required this.currentPage, required this.pageController});

  final int currentPage;
  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildDotsIndicator(),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: currentPage == 0 ? AppColors.blue: AppColors.primary,
            padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 12.h,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
          onPressed: () {
            currentPage == 1
                ? Navigator.pushReplacementNamed(context, Routes.loginScreen)
            :
            pageController.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastLinearToSlowEaseIn,
            );
          },
          icon: Text(
            currentPage == 0 ? "الـتـالـي" : "ابدأ دلوقتي",
            style: AppTextStyles.bold16.copyWith(
              color: AppColors.white,
            ),
          ),
          label: const Icon(
            Icons.arrow_forward,
            color: AppColors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildDotsIndicator() {
    return DotsIndicator(
      dotsCount: 2,
      decorator: DotsDecorator(
        activeColor: currentPage == 0 ?
        AppColors.blue : AppColors.primary,
        color: currentPage == 1
            ? currentPage == 0 ?
        AppColors.blue : AppColors.primary
            : currentPage == 0 ?
        AppColors.blue.withOpacity(0.4): AppColors.primary.withOpacity(.4),
      ),
    );
  }
}
