import 'package:flutter/material.dart';
import 'package:my_ai/helper/constant/color.dart';
import 'package:my_ai/helper/theme/appbar_theme/appbar_theme.dart';

class AppTheme {
  static final ThemeData theme = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
    useMaterial3: true,
    appBarTheme: CustomAppBarTheme.appBarTheme,
    scaffoldBackgroundColor: AppColor.color1,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColor.color5, elevation: 0),
  );
}
