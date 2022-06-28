import 'package:flutter/material.dart';
import 'package:iubrsa/data/constants/app_data.dart';

class IUBRSATheme {
  static ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppData.customWhite,
    primaryColor: AppData.royalBlueColor,
    brightness: Brightness.light,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppData.royalBlueColor,
      onPrimary: AppData.customWhite,
      secondary: AppData.babyBlueColor,
      onSecondary: AppData.darkBlueColor,
      error: AppData.customRed,
      onError: AppData.customWhite,
      background: AppData.customWhite,
      onBackground: AppData.darkBlueColor,
      surface: AppData.customWhite,
      onSurface: AppData.darkBlueColor,
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: AppData.customWhite,
      elevation: 0,
    ),
  );

  //To Be updated later!
  static ThemeData darkTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: AppData.customWhite,
    primaryColor: AppData.royalBlueColor,
    brightness: Brightness.light,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: AppData.royalBlueColor,
      onPrimary: AppData.customWhite,
      secondary: AppData.babyBlueColor,
      onSecondary: AppData.darkBlueColor,
      error: AppData.customRed,
      onError: AppData.customWhite,
      background: AppData.customWhite,
      onBackground: AppData.darkBlueColor,
      surface: AppData.customWhite,
      onSurface: AppData.darkBlueColor,
    ),
  );
}
