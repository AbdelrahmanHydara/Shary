import 'package:flutter/material.dart';
import 'package:shary/core/helpers/spacing.dart';
import 'package:shary/core/theming/app_text_styles.dart';

class HeadingStartAuth extends StatelessWidget {
  const HeadingStartAuth({super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(32),
        Text(
          "شــــــاري",
          style: AppTextStyles.bold32.copyWith(
            color: Colors.blue.shade700,
          ),
        ),
        verticalSpace(10),
        Text(
          "انضم إلى مجتمع شـاري الجامعي",
          style: AppTextStyles.regular14.copyWith(
            color: Colors.black54,
          ),
        ),
        verticalSpace(28),
      ],
    );
  }
}
