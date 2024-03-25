import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeHelpper {
  static TextTheme _textTheme = TextTheme(
    bodyMedium: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
    bodySmall: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
    titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
    titleMedium: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    titleSmall: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
  );

  static ThemeData lightTheme = ThemeData(
    fontFamily: 'kalameh',
    scaffoldBackgroundColor: Colors.white,
    textTheme: _textTheme,
    iconTheme: IconThemeData(color: Color(0xff0c5eda)),
    dividerColor: Color(0xffb6c2d2),
    hintColor: Color(0xffa8a8a8),
    colorScheme: ColorScheme.light(
      primary: Color(0xff702dff),
      onPrimary: Colors.white,
      secondary: Color(0xff0c5eda),
      onSecondary: Colors.white,
      secondaryContainer: Color(0xfff1f1f1),
      primaryContainer: Color(0xffdaf2ff),
      tertiary: Color(0xfff6f6f6),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    fontFamily: 'kalameh',
    scaffoldBackgroundColor: Color(0xff212121),
    textTheme: _textTheme,
    hintColor: Color(0xffa8a8a8),
    dividerColor: Color(0xffb6c2d2),
    colorScheme: ColorScheme.dark(
      tertiary: Color(0xff333333),
      primary: Color(0xff702dff),
      onPrimary: Colors.white,
      secondary: Color(0xff0c5eda),
      onSecondary: Colors.white,
      secondaryContainer: Color(0xff292929),
      primaryContainer: Color(0xff00293e),
    ),
  );

  static void changeTheme() {
    if (Get.isDarkMode) {
      Get.changeTheme(lightTheme);
    } else {
      Get.changeTheme(darkTheme);
    }
  }
}
