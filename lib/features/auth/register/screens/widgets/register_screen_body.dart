import 'package:flutter/material.dart';
import 'package:shary/core/helpers/spacing.dart';
import 'register_button.dart';
import 'register_text_form_field.dart';

class RegisterScreenBody extends StatelessWidget {
  const RegisterScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const RegisterTextFormField(),
        verticalSpace(28),
        const RegisterButton(),
      ],
    );
  }
}
