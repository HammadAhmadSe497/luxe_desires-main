import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/modules/users/controllers/users_controller.dart';

class SearchField extends GetView<UsersController> {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 15.h),
      child: TextField(
        controller: controller.searchController,
        obscureText: false,
        decoration: InputDecoration(
          labelText: 'Search for users...',
          labelStyle: Theme.of(context).textTheme.labelMedium,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: !isDark
                  ? LightThemeColor.primaryBackground
                  : DarkThemeColor.primaryBackground,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: !isDark ? LightThemeColor.primary : DarkThemeColor.primary,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: !isDark ? LightThemeColor.error : DarkThemeColor.error,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: !isDark ? LightThemeColor.error : DarkThemeColor.error,
              width: 2,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          filled: true,
          fillColor: !isDark
              ? LightThemeColor.primaryBackground
              : DarkThemeColor.primaryBackground,
          prefixIcon: Icon(
            Icons.search_outlined,
            color: !isDark
                ? LightThemeColor.secondaryText
                : DarkThemeColor.secondaryText,
          ),
        ),
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
