import 'package:alex_astudillo_erp/ui/pages/sign_in/widgets/sign_in_form.dart';
import 'package:alex_astudillo_erp/ui/theme/app_theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: ListView(
                children: [
                  const SizedBox(height: 50.0),
                  Text(
                    AppLocalizations.of(context)!.welcomeBack,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Text(
                    AppLocalizations.of(context)!
                        .enterYourCredentialsToContinue,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20.0),
                  const Icon(Icons.shield_moon_outlined, size: 100.0),
                  const SizedBox(height: 20.0),
                  const SignInForm(),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text.rich(
                TextSpan(
                  text: '${AppLocalizations.of(context)!.doNotHaveAnAccount} ',
                  children: [
                    WidgetSpan(
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          AppLocalizations.of(context)!.registerNow,
                          style: TextStyle(
                            color: Theme.of(context)
                                .extension<AppThemeColor>()!
                                .primary,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
