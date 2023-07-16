import 'package:alex_astudillo_erp/ui/pages/sign_in/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SignInForm(),
      ),
    );
  }
}
