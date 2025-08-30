import 'package:flutter/material.dart';
import 'package:shary/core/helpers/spacing.dart';

class BuildCategoryIcon extends StatelessWidget {
  const BuildCategoryIcon({super.key, required this.icon, required this.label, required this.color, this.subLabel});

  final IconData icon; final String label;  final Color color;
  final String? subLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: color, size: 28),
        ),
        verticalSpace(6),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[700],
          ),
        ),
        verticalSpace(6),
        Text(
          subLabel??"",
          style: TextStyle(
            fontSize: 11,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}
