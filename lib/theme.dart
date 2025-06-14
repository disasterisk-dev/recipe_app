import 'package:flutter/material.dart';

class AppColors {
  static Color brand = const Color.fromRGBO(62, 101, 80, 1);
  static Color brandMuted = const Color.fromRGBO(78, 126, 100, 1);

  static Color warning = const Color.fromRGBO(203, 1, 1, 1);

  static Color inverse = const Color.fromRGBO(245, 245, 245, 1);
  static Color inverseMuted = const Color.fromRGBO(224, 224, 224, 1);

  static Color bold = const Color.fromRGBO(34, 29, 35, 1);
  static Color boldMuted = const Color.fromRGBO(54, 46, 56, 1);
}

ThemeData primaryTheme = ThemeData(
  // seed
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.brand,
  ),
  // scaffold
  scaffoldBackgroundColor: AppColors.inverseMuted,
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.brand,
    foregroundColor: AppColors.inverse,
    surfaceTintColor: Colors.transparent,
    centerTitle: true,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
      foregroundColor: AppColors.inverse,
      backgroundColor: AppColors.brandMuted,
      shape: const CircleBorder()),
);
