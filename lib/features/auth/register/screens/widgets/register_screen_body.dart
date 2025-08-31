import 'package:flutter/material.dart';
import 'package:shary/core/helpers/spacing.dart';
import 'register_button.dart';
import 'register_text_form_field.dart';

class RegisterScreenBody extends StatelessWidget {
  const RegisterScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        RegisterTextFormField(),
        verticalSpace(28),
        RegisterButton(),
      ],
    );
  }
}
