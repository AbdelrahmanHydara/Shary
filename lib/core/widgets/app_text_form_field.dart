import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shary/core/theming/app_text_styles.dart';

import '../theming/app_colors.dart' show AppColors;

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.prefixIcon,
    this.keyboardType,
    this.suffixIcon,
    this.isObscureText,
    this.focusedBorder,
    this.enabledBorder,
    this.hintStyle,
    this.labelStyle,
    required this.validator,
    this.controller,
  });

  final String hintText, labelText;
  final IconData? prefixIcon, suffixIcon;
  final TextInputType? keyboardType;
  final bool? isObscureText;
  final InputBorder? focusedBorder, enabledBorder;
  final TextStyle? hintStyle, labelStyle;
  final Function(String?) validator;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value) {
         return validator(value);
        },
        controller: controller,
        keyboardType: keyboardType,
        obscureText: isObscureText ?? false,
        cursorColor: AppColors.blueMain,
        style: AppTextStyles.regular14.copyWith(
        color: AppColors.black,
      ),
        decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: hintStyle ?? AppTextStyles.regular14.copyWith(
          color: AppColors.grey,
        ),
        labelStyle: labelStyle ?? AppTextStyles.regular14.copyWith(
          color: AppColors.grey,
        ),
        labelText: labelText,
        prefixIcon: Icon(
            prefixIcon,
            color: AppColors.grey
        ),
        suffixIcon: Icon(
            suffixIcon,
            color: AppColors.grey
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
        ),
        focusedBorder: focusedBorder ?? OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
              color: AppColors.blueMain,
            )
        ),
        enabledBorder: enabledBorder ?? OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(
              color: AppColors.greyLight,
            ),
      ),
      )
    );
  }
}
