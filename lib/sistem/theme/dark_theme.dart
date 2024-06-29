import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_wa/sistem/extension/custom_extension_theme.dart';
import 'package:flutter_application_wa/sistem/utils/coloors.dart';

ThemeData darkTheme() {
  ThemeData base = ThemeData.dark();
  return base.copyWith(
      scaffoldBackgroundColor: Coloors.backgroundDark,
      extensions: [
        CustomThemeExtension.darkMode,
      ],
      appBarTheme: const AppBarTheme(
        titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Coloors.backgroundDark,
          statusBarBrightness: Brightness.dark,
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Coloors.greenDark,
          foregroundColor: Coloors.backgroundDark,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Coloors.greyBackground,
        modalBackgroundColor: Coloors.greyBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
      ),
      dialogBackgroundColor: Coloors.greyBackground,
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Coloors.backgroundDark,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Coloors.greenDark, foregroundColor: Colors.black));
}
