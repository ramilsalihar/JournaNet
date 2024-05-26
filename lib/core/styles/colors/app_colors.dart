import 'package:flutter/material.dart';
import 'package:swiftui/core/styles/colors/dark_theme_colors.dart';
import 'package:swiftui/core/styles/colors/light_theme_colors.dart';

const appColorsLight = AppColorsLight();
const appColorsDark = AppColorsDark();

abstract class AppColors {
  const AppColors();

  Color get primaryColor;

  Color get secondaryColor;

  Color get white;

  Color get black;

  static AppColors of(BuildContext context) {
    switch (Theme.of(context).brightness) {
      case Brightness.light:
        return appColorsLight;
      case Brightness.dark:
        return appColorsDark;
    }
  }
}
