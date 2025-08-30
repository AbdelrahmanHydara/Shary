import 'package:flutter/material.dart';

class AppColors {
  // 🌟 الألوان الأساسية
  static const Color primary = Colors.green;
  static const Color blue = Colors.blue;
  static const Color purple = Colors.purple;
  static const Color white = Colors.white;

  // ✅ درجات الأخضر
  static Color greenLight = Colors.green.shade100; // #C8E6C9
  static Color greenDark = Colors.green.shade900;  // #1B5E20

  // 🔵 درجات الأزرق
  static Color blueLight = Colors.blue.withOpacity(0.1);
  static const Color blueMain = Colors.blue;

  // 🟣 درجات البنفسجي
  static Color purpleLight = Colors.purple.withOpacity(0.1);
  static const Color purpleMain = Colors.purple;

  // ⚪️ الرمادي
  static Color greyLight = Colors.grey.shade400; // للـ dots في light
  static Color greyDark = Colors.grey.shade600;  // للـ dots في dark

  // 🎨 خلفيات
  static Color backgroundLight = Colors.grey.shade50; // Light mode
  static Color backgroundDark = Colors.grey.shade900; // Dark mode
}
