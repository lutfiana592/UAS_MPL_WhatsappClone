import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_wa/sistem/extension/custom_extension_theme.dart';
import 'package:flutter_application_wa/sistem/utils/coloors.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      scaffoldBackgroundColor: Coloors.backgroundLight,
      extensions: [
        CustomThemeExtension.lightMode,
      ],
      appBarTheme: const AppBarTheme(
        backgroundColor: Coloors.backgroundLight,
        titleTextStyle: TextStyle(fontSize: 25, color: Coloors.greenLight),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black26,
          statusBarBrightness: Brightness.dark,
        ),
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Coloors.greenLight,
          foregroundColor: Coloors.backgroundLight,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
      ),
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Coloors.backgroundLight,
        modalBackgroundColor: Coloors.backgroundLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
      ),
      dialogBackgroundColor: Coloors.backgroundLight,
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Coloors.greenLight, foregroundColor: Colors.white));
}
