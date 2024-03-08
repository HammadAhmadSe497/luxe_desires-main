import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/contants.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: LightThemeColor.primaryBackground,
    textTheme: TextTheme(
      displayLarge: displayStyle.copyWith(
        color: LightThemeColor.primaryText,
      ),
      displayMedium: displayStyle.copyWith(
          fontSize: 45.sp, color: LightThemeColor.primaryText),
      displaySmall: displayStyle.copyWith(
          color: LightThemeColor.primaryText,
          fontSize: 30.sp,
          fontWeight: FontWeight.bold),
      headlineLarge: headlineStyle.copyWith(
          color: LightThemeColor.primaryText,
          fontWeight: FontWeight.normal,
          fontSize: 32.sp),
      headlineMedium: headlineStyle.copyWith(
          color: LightThemeColor.primaryText, fontSize: 24.sp),
      headlineSmall: headlineStyle.copyWith(
          color: LightThemeColor.primaryText, fontSize: 20.sp),
      bodyLarge: bodystyle.copyWith(color: LightThemeColor.primaryText),
      bodyMedium: bodystyle.copyWith(
          color: LightThemeColor.primaryText, fontSize: 14.sp),
      bodySmall: bodystyle.copyWith(
          color: LightThemeColor.primaryText, fontSize: 12.sp),
      titleLarge: titleStyle.copyWith(
        color: LightThemeColor.primaryText,
        fontSize: 22.sp,
      ),
      titleMedium: titleStyle.copyWith(color: LightThemeColor.info),
      titleSmall:
          titleStyle.copyWith(color: LightThemeColor.info, fontSize: 14.sp),
      labelLarge: labelStyle.copyWith(color: LightThemeColor.secondaryText),
      labelMedium: labelStyle.copyWith(
          color: LightThemeColor.secondaryText, fontSize: 14.sp),
      labelSmall: labelStyle.copyWith(
          color: LightThemeColor.secondaryText, fontSize: 12.sp),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    canvasColor: DarkThemeColor.primaryBackground,
    scaffoldBackgroundColor: DarkThemeColor.primaryBackground,
    textTheme: TextTheme(
      displayLarge: displayStyle,
      displayMedium: displayStyle.copyWith(fontSize: 45.sp),
      displaySmall:
          displayStyle.copyWith(fontSize: 30.sp, fontWeight: FontWeight.bold),
      headlineLarge: headlineStyle.copyWith(
          fontWeight: FontWeight.normal, fontSize: 32.sp),
      headlineMedium: headlineStyle.copyWith(fontSize: 24.sp),
      headlineSmall: headlineStyle.copyWith(fontSize: 20.sp),
      bodyLarge: bodystyle,
      bodyMedium: bodystyle.copyWith(fontSize: 14.sp),
      bodySmall: bodystyle.copyWith(fontSize: 12.sp),
      titleLarge: titleStyle.copyWith(
          fontSize: 22.sp, color: DarkThemeColor.primaryText),
      titleMedium: titleStyle,
      titleSmall: titleStyle.copyWith(fontSize: 14.sp),
      labelLarge: labelStyle,
      labelMedium: labelStyle.copyWith(fontSize: 14.sp),
      labelSmall: labelStyle.copyWith(fontSize: 12.sp),
    ),
  );
}
