import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shary/core/theming/app_colors.dart';
import 'package:shary/core/theming/app_text_styles.dart';

class AppDropdownFormField<T> extends StatelessWidget {
  const AppDropdownFormField({
    super.key,
    required this.labelText,
    required this.items,
    this.value,
    this.onChanged,
    required this.validator,
    this.hintText,
    this.focusedBorder,
    this.enabledBorder,
    this.labelStyle,
  });

  final String labelText;
  final String? hintText;
  final List<DropdownMenuItem<T>> items;
  final T? value;
  final ValueChanged<T?>? onChanged;
  final FormFieldValidator<T>? validator;
  final InputBorder? focusedBorder, enabledBorder;
  final TextStyle? labelStyle;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<T>(
      initialValue: value,
      items: items,
      onChanged: onChanged,
      validator: validator,
      decoration: InputDecoration(
        isDense: true,
        hintText: hintText,
        hintStyle: AppTextStyles.regular14.copyWith(
          color: AppColors.grey,
        ),
        labelText: labelText,
        labelStyle: labelStyle ??
            AppTextStyles.regular14.copyWith(
              color: AppColors.grey,
            ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: AppColors.blueMain,
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: AppColors.greyLight,
              ),
            ),
      ),
      style: AppTextStyles.regular14.copyWith(
        color: AppColors.black,
      ),
      icon: const Icon(
        Icons.arrow_drop_down,
        color: AppColors.grey,
      ),
      dropdownColor: AppColors.white,
    );
  }
}
