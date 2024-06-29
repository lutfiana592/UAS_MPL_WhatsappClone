import 'package:flutter/material.dart';
import 'package:flutter_application_wa/sistem/extension/custom_extension_theme.dart';
import 'package:flutter_application_wa/sistem/utils/coloors.dart';
import 'package:flutter_application_wa/sistem/widgets/custom_icon_button.dart';

class LanguageButton extends StatelessWidget {
  const LanguageButton({super.key});

  showBottomSheet(context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 4,
                width: 30,
                decoration: BoxDecoration(
                  color: context.theme.greyColor!.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 20),
                  CustomIconButtom(
                      onPressed: () => Navigator.of(context).pop(),
                      icon: Icons.close_outlined),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Languange',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Divider(
                color: context.theme.greyColor!.withOpacity(0.3),
                thickness: 5,
              ),
              RadioListTile(
                value: true,
                groupValue: true,
                onChanged: (Value) {},
                activeColor: Coloors.greenDark,
                title: const Text('English'),
                subtitle: Text(
                  "Phone's Language",
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                ),
              ),
              RadioListTile(
                value: true,
                groupValue: false,
                onChanged: (Value) {},
                activeColor: Coloors.greenDark,
                title: const Text('አማርኛ'),
                subtitle: Text(
                  "Amharik",
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                ),
              ),
              RadioListTile(
                value: true,
                groupValue: false,
                onChanged: (Value) {},
                activeColor: Coloors.greenDark,
                title: const Text('Indonesia'),
                subtitle: Text(
                  "Bahasa Indonesia",
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                ),
              ),
              RadioListTile(
                value: true,
                groupValue: false,
                onChanged: (Value) {},
                activeColor: Coloors.greenDark,
                title: const Text('Sunda'),
                subtitle: Text(
                  "Basa Sunda",
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                ),
              ),
              RadioListTile(
                value: true,
                groupValue: false,
                onChanged: (Value) {},
                activeColor: Coloors.greenDark,
                title: const Text('Jawa'),
                subtitle: Text(
                  "Basa Jawa",
                  style: TextStyle(
                    color: context.theme.greyColor,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.theme.langBgColor,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => showBottomSheet(context),
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.langHightlightColor,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(mainAxisSize: MainAxisSize.min, children: [
            Icon(
              Icons.language,
              color: Coloors.greenDark,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'English',
              style: TextStyle(color: Coloors.greenDark),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Coloors.greenDark,
            ),
          ]),
        ),
      ),
    );
  }
}
