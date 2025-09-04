import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shary/core/helpers/spacing.dart';
import 'package:shary/core/theming/app_colors.dart';
import 'package:shary/core/theming/app_text_styles.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String seller;

  const ProductCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.seller,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      color: AppColors.backgroundLight,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding: EdgeInsets.all(14.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Image.network(
                  image,
                  width: double.infinity,
                  fit: BoxFit.contain,
              ),
            ),
            verticalSpace(10),
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.bold14,
            ),
            verticalSpace(5),
            Text(
              price,
              style: AppTextStyles.bold14.copyWith(
                  color: AppColors.blueSecondary,
              ),
            ),
            verticalSpace(5),
            Text(
              seller,
              style: AppTextStyles.regular13.copyWith(
                color: AppColors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
