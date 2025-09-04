import 'package:flutter/material.dart';
import 'package:shary/core/theming/app_colors.dart';

class AppDivider extends StatelessWidget {
  const AppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.greyLighter,
      thickness: 2,
    );
  }
}
