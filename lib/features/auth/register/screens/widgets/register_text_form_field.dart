import 'package:flutter/material.dart';
import 'package:shary/core/helpers/spacing.dart';
import 'package:shary/core/widgets/app_text_form_field.dart';

class RegisterTextFormField extends StatelessWidget {
  const RegisterTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Name
        AppTextFormField(
          hintText: "أدخل اسمك الكامل",
          labelText: "الاسم الكامل",
          prefixIcon: Icons.person_outline,
          keyboardType: TextInputType.name,
        ),
        verticalSpace(15),
        // Email
        AppTextFormField(
          hintText: "student@university.edu",
          labelText: "البريد الجامعي",
          prefixIcon: Icons.email_outlined,
          keyboardType: TextInputType.emailAddress,
        ),
        verticalSpace(15),
        // Password
        AppTextFormField(
          hintText: "أدخل كلمة المرور",
          labelText: "كلمة المرور",
          isObscureText: true,
          prefixIcon: Icons.lock_outline,
          suffixIcon: Icons.visibility_off_outlined,
          keyboardType: TextInputType.visiblePassword,
        ),
        verticalSpace(15),
        // Confirm Password
        AppTextFormField(
          hintText: "أكّد كلمة المرور",
          labelText: "تأكيد كلمة المرور",
          isObscureText: true,
          prefixIcon: Icons.lock_outline,
          suffixIcon: Icons.visibility_off_outlined,
          keyboardType: TextInputType.visiblePassword,
        ),
        verticalSpace(15),
        // College
        AppTextFormField(
          hintText: "أدخل اسم كليتك",
          labelText: "الكلية",
          prefixIcon: Icons.school_outlined,
          keyboardType: TextInputType.text,
        ),
        verticalSpace(15),
        // Academic Year
        AppTextFormField(
          hintText: "السنة الثالثة",
          labelText: "السنة الدراسية",
          prefixIcon: Icons.date_range_outlined,
          keyboardType: TextInputType.text,
        ),
      ],
    );
  }
}
