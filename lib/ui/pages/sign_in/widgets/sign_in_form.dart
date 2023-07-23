import 'package:alex_astudillo_erp/app/app.dart';
import 'package:alex_astudillo_erp/ui/pages/sign_in/cubit/sign_in_cubit.dart';
import 'package:alex_astudillo_erp/ui/pages/sign_in/cubit/sign_in_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({super.key});

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText: AppLocalizations.of(context)!.email,
              ),
            ),
            const SizedBox(height: 16.0),
            BlocBuilder<SignInCubit, SignInState>(
              builder: (context, state) {
                return TextFormField(
                  controller: passwordController,
                  obscureText: !state.viewPassword,
                  decoration: InputDecoration(
                    labelText: AppLocalizations.of(context)!.password,
                    suffixIcon: IconButton(
                      onPressed:
                          context.read<SignInCubit>().changePasswordVisibility,
                      icon: Icon(
                        state.viewPassword
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 16.0),
            Align(
              alignment: Alignment.centerRight,
              child: InkWell(
                onTap: () {},
                child: Text(
                  AppLocalizations.of(context)!.forgotPassword,
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            BlocBuilder<SignInCubit, SignInState>(
              builder: (context, state) {
                return ElevatedButton.icon(
                  onPressed: state.loading ? null : _signIn,
                  label: Text(AppLocalizations.of(context)!.signIn),
                  icon: const Icon(Icons.login),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _signIn() async {
    final String? error = await context
        .read<SignInCubit>()
        .signIn(usernameController.text.trim(), passwordController.text);
    if (error != null && context.mounted) {
      showErrorSnackbar(context, error);
    }
  }
}
