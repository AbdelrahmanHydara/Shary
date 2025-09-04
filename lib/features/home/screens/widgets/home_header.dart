import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shary/core/theming/app_colors.dart';
import 'package:shary/core/theming/app_text_styles.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 0.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FaIcon(
            FontAwesomeIcons.bell,
            size: 24,
            color: AppColors.backgroundDark,
          ),
          Text(
            "شاري",
            style: AppTextStyles.bold25.copyWith(color: AppColors.blueMain),
          ),
          FaIcon(
            FontAwesomeIcons.cartShopping,
            size: 24,
            color: AppColors.backgroundDark,
          ),
        ],
      ),
    );
  }
}
