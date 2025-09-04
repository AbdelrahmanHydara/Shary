import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shary/core/routing/routes.dart';
import 'package:shary/core/theming/app_colors.dart';
import 'package:shary/core/theming/app_text_styles.dart';
import 'package:shary/core/widgets/app_text_button.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child:  AppTextButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.homeScreen);
        },
        buttonText: "إنشاء حساب",
        textStyle: AppTextStyles.semiBold16.copyWith(
          color: AppColors.white,
        ),
        borderRadius: 16.r,
      ),
    );
  }
}
