import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shary/core/theming/app_colors.dart';

class AppTextButton extends StatelessWidget
{
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;
  final double? borderRadius;
  final double? buttonWidth;
  final double? buttonHeight;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Color? backgroundColor;
  final Color? foregroundColor;

  const AppTextButton({
    super.key,
    required this.buttonText,
    required this.textStyle,
    required this.onPressed,
    this.borderRadius,
    this.buttonWidth,
    this.buttonHeight,
    this.backgroundColor,
    this.horizontalPadding,
    this.verticalPadding,
    this.foregroundColor
  });

  @override
  Widget build(BuildContext context)
  {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 16.r),
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(buttonWidth?.w ?? double.maxFinite,buttonHeight?.h ?? 50.h)
        ),
        padding: WidgetStateProperty.all(
         EdgeInsets.symmetric(
           vertical: verticalPadding?.h ?? 14.h,
           horizontal: horizontalPadding?.w ?? 12.w,
         ),
        ),
        backgroundColor: WidgetStateProperty.all(
          backgroundColor ?? AppColors.blueMain,
        ),
        foregroundColor: WidgetStateProperty.all(
          foregroundColor ?? AppColors.white,
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
          buttonText,
        style: textStyle,
      ),
    );
  }
}
