import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shary/core/helpers/spacing.dart';
import 'package:shary/core/theming/app_colors.dart';
import 'package:shary/core/theming/app_text_styles.dart';
import 'package:shary/core/widgets/app_text_button.dart';

class SwitchAuthButton extends StatelessWidget {
  const SwitchAuthButton({
    super.key,
    required this.isLogin,
    required this.onToggle,
  });

  final bool isLogin;
  final Function(bool) onToggle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: AppTextButton(
            onPressed: () => onToggle(false),
            buttonText: 'تسجيل',
            textStyle: AppTextStyles.semiBold16.copyWith(
              color: !isLogin ? AppColors.white : AppColors.black,
            ),
            borderRadius: 12.r,
            verticalPadding: 0,
            buttonHeight: 38,
            backgroundColor: !isLogin ? AppColors.blue : Colors.grey[200],
            foregroundColor: !isLogin ? AppColors.white : Colors.black,
          ),
        ),
        horizontalSpace(10),
        Expanded(
          child: AppTextButton(
            onPressed: () => onToggle(true),
            buttonText: 'دخول',
            textStyle: AppTextStyles.semiBold16.copyWith(
              color: !isLogin ? AppColors.black : AppColors.white,
            ),
            borderRadius: 12.r,
            verticalPadding: 0,
            buttonHeight: 38,
            backgroundColor: isLogin ? AppColors.blue : Colors.grey[200],
            foregroundColor: isLogin ? AppColors.white : Colors.black,
          ),
        ),
      ],
    );
  }
}
