import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swiftui/core/styles/colors/app_colors.dart';
import 'package:swiftui/core/styles/dimens/dimens.dart';
import 'package:swiftui/core/styles/text/app_text.dart';

final dimens = Dimens();

class AppTheme {
  static const _lightColors = appColorsLight;

  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: _lightColors.primaryColor,
    cardColor: _lightColors.cardColor,
    colorScheme: ColorScheme.light(
      primary: _lightColors.primaryColor,
      secondary: _lightColors.secondaryColor,
      background: _lightColors.black,
    ),
    fontFamily: GoogleFonts.openSans(
      fontWeight: FontWeight.w600,
    ).fontFamily,
    textTheme: AppTextTheme(
      colors: _lightColors,
      dimens: dimens,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: _lightColors.white,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: _lightColors.navBarColor,
      unselectedItemColor: Colors.grey,
    ),
  );

  static const _darkColors = appColorsDark;

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: _darkColors.primaryColor,
    colorScheme: ColorScheme.dark(
      primary: _darkColors.primaryColor,
      secondary: _darkColors.secondaryColor,
      background: _darkColors.secondaryColor,
    ),
    fontFamily: GoogleFonts.montserrat(
      fontWeight: FontWeight.w600,
    ).fontFamily,
    textTheme: AppTextTheme(
      colors: _darkColors,
      dimens: dimens,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: _lightColors.primaryColor,
      selectedItemColor: _lightColors.secondaryColor,
      unselectedItemColor: _lightColors.white,
    ),
  );
}
