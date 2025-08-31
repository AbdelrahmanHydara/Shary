import 'package:flutter/material.dart';
import 'package:shary/core/helpers/spacing.dart';
import 'login_button.dart';
import 'login_text_form_field.dart';

class LoginScreenBody extends StatelessWidget {
  const LoginScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          LoginTextFormField(),
          verticalSpace(28),
          LoginButton(),
        ],
      ),
    );
  }
}


