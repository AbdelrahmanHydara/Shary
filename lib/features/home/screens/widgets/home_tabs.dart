import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shary/core/theming/app_colors.dart';

class HomeTabs extends StatelessWidget {
  const HomeTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTab("كتب", false),
          _buildTab("أدوات", true),
          _buildTab("ملخصات", false),
        ],
      ),
    );
  }

  Widget _buildTab(String text, bool selected) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: selected ? AppColors.blueSecondary : Colors.transparent,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(color: AppColors.blueSecondary),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: selected ? AppColors.white : AppColors.blueSecondary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
