import 'package:flutter/material.dart';
import 'package:swiftui/core/styles/colors/app_colors.dart';
import 'package:swiftui/core/styles/dimens/dimens.dart';

class AppTextTheme extends TextTheme {
  final AppColors colors;
  final Dimens dimens;

  AppTextTheme({
    required this.colors,
    required this.dimens,
  }) : super(
        // displayLarge: TextStyle(
        //   fontSize: dimens.textDisplayLarge,
        //   color: colors.black,
        // ),
        );
}
