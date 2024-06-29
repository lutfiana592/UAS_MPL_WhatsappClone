import 'package:flutter/material.dart';
import 'package:flutter_application_wa/sistem/extension/custom_extension_theme.dart';
import 'package:flutter_application_wa/sistem/routes/routes.dart';
import 'package:flutter_application_wa/sistem/widgets/custom_elevated_button.dart';
import 'package:flutter_application_wa/features/welcome/widgets/language_button.dart';
import 'package:flutter_application_wa/features/welcome/widgets/privacy_and_terms.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  navigatedToLoginPage(context) {
    Navigator.of(context).pushNamedAndRemoveUntil(
      Routes.login,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                child: Image.asset(
                  'assets/images/circle.png',
                  color: context.theme.circleImageColor,
                ),
              ),
            ),
          ),
          const SizedBox(height: 40),
          Expanded(
              child: Column(
            children: [
              const Text(
                'Welcome to WhatsApp',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              const PrivacyAndTerms(),
              CustomElevatedButton(
                onPressed: () => navigatedToLoginPage(context),
                text: 'AGREE AND CONTINUE',
              ),
              const SizedBox(
                height: 50,
              ),
              const LanguageButton(),
            ],
          ))
        ],
      ),
    );
  }
}
