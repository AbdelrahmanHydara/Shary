import 'package:flutter/material.dart';
import 'package:shary/core/helpers/spacing.dart';
import 'package:shary/core/widgets/app_text_form_field.dart';

class LoginTextFormField extends StatelessWidget {
  const LoginTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Email
        AppTextFormField(
          hintText: "student@university.edu",
          labelText: "البريد الجامعي",
          prefixIcon: Icons.email_outlined,
          keyboardType: TextInputType.emailAddress,
        ),
        verticalSpace(20),
        // Password
        AppTextFormField(
          hintText: "أدخل كلمة المرور",
          labelText: "كلمة المرور",
          isObscureText: true,
          prefixIcon: Icons.lock_outline,
          suffixIcon: Icons.visibility_off_outlined,
          keyboardType: TextInputType.visiblePassword,
        ),
      ],
    );
  }
}
