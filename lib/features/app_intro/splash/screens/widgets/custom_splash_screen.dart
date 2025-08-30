import 'package:flutter/material.dart';
import 'package:shary/core/helpers/spacing.dart';
import 'package:shary/core/theming/app_colors.dart';
import 'package:shary/core/theming/app_text_styles.dart';

class CustomSplashScreen extends StatelessWidget {
  const CustomSplashScreen({
    super.key,
    required AnimationController pulseController,
  }) : _pulseController = pulseController;

  final AnimationController _pulseController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ScaleTransition(
            scale: _pulseController,
            child: Image.asset(
              "assets/images/book.png",
              color: AppColors.white,
            ),
          ),
          verticalSpace(10),
          Text(
            "شـــاري",
            style: AppTextStyles.bold28.copyWith(
              color: AppColors.white,
              fontSize: 52,
            ),
          ),
          verticalSpace(16),
          Text(
            "سوق الطلاب الاول",
            style: AppTextStyles.regular22.copyWith(
              color: Colors.white70,
            ),
          ),
          verticalSpace(5),
          Text(
            "بيع واشتري كتبك وأدواتك مع زملاءك",
            style: AppTextStyles.regular16.copyWith(
              color: Colors.white60,
            ),
          ),
        ],
      ),
    );
  }
}
