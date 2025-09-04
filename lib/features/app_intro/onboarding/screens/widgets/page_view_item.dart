import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shary/core/helpers/spacing.dart';
import 'package:shary/core/theming/app_colors.dart';
import 'package:shary/core/theming/app_text_styles.dart';
import 'build_category_icons.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.iconOne,
    required this.iconTwo,
    required this.iconThree,
    required this.labelOne,
    required this.labelTwo,
    required this.labelThree,
    required this.iconMain,
    required this.colorCircle,
    this.colorIcon,
  });

  final String title, subtitle, labelOne, labelTwo, labelThree;
  final IconData iconOne, iconTwo, iconThree, iconMain;
  final Color? colorCircle, colorIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 180.w,
          height: 180.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: colorCircle,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FaIcon(
                iconMain,
                size: 50,
                color: colorIcon,
              ),
              verticalSpace(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FaIcon(
                      iconOne,
                      size: 20,
                      color: AppColors.blue,
                  ),
                  horizontalSpace(12),
                  FaIcon(
                      iconTwo,
                      size: 20,
                      color: AppColors.primary,
                  ),
                  horizontalSpace(12),
                  FaIcon(
                      iconThree,
                      size: 20,
                      color: AppColors.purple),
                ],
              ),
            ],
          ),
        ),
        verticalSpace(32),
        Text(
            title,
            style: AppTextStyles.bold25,
        ),
        verticalSpace(16),
        Text(
          subtitle,
          textAlign: TextAlign.center,
          style: AppTextStyles.regular18.copyWith(
            color: Colors.grey[700],
            height: 1.5,
          ),
        ),
        verticalSpace(34),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BuildCategoryIcon(
              icon: iconOne,
              label: labelOne,
              color: AppColors.blue,
            ),
            horizontalSpace(20),
            BuildCategoryIcon(
              icon: iconTwo,
              label: labelTwo,
              color: AppColors.primary,
            ),
            horizontalSpace(20),
            BuildCategoryIcon(
              icon: iconThree,
              label: labelThree,
              color: AppColors.purple,
            ),
          ],
        ),
      ],
    );
  }
}
