import 'package:flutter/material.dart';
import 'package:shary/core/helpers/app_validators.dart';
import 'package:shary/core/helpers/spacing.dart';
import 'package:shary/core/widgets/app_text_form_field.dart';

class LoginTextFormField extends StatefulWidget {
  const LoginTextFormField({super.key});

  @override
  State<LoginTextFormField> createState() => _LoginTextFormFieldState();
}


class _LoginTextFormFieldState extends State<LoginTextFormField> {

  final formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          // Email
          AppTextFormField(
            hintText: "student@university.edu",
            labelText: "البريد الجامعي",
            prefixIcon: Icons.email_outlined,
            keyboardType: TextInputType.emailAddress,
            validator: (value) => AppValidators.universityEmail(value),
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
            validator: (value) => AppValidators.password(value),
          ),
        ],
      ),
    );
  }
}
