import 'package:flutter/widgets.dart';
import 'package:flutter_application_wa/sistem/extension/custom_extension_theme.dart';

class PrivacyAndTerms extends StatelessWidget {
  const PrivacyAndTerms({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: ' Read More ',
            style: TextStyle(
              color: context.theme.greyColor,
              height: 1.5,
            ),
            children: [
              TextSpan(
                  text: ' Privacy Policy ',
                  style: TextStyle(
                    color: context.theme.blueColor,
                  )),
              const TextSpan(
                text: ' Tap "Agree and Continue" to Accept the ',
              ),
              TextSpan(
                  text: 'Terms of Services',
                  style: TextStyle(
                    color: context.theme.blueColor,
                  )),
            ]),
      ),
    );
  }
}
