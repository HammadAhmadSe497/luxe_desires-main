import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/routes/app_pages.dart';

class CategoryWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const CategoryWidget({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        if (title == 'Events') {
          Get.toNamed(Routes.EVENT_SCREEN,
              arguments: title == 'Events' ? true : false);
        } else if (title == 'Music') {
          Get.toNamed(Routes.MUSIC_PLAYER,
              arguments: title == 'Music' ? true : false);
        } else if (title == 'Guest List') {
          Get.toNamed(Routes.USERS,
              arguments: title == 'Guest List' ? true : false);
        } else if (title == 'Menu') {
          Get.toNamed(Routes.ORDER, arguments: title == 'Menu' ? true : false);
        }else{
          Get.toNamed(Routes.HOME);
        }
      },
      child: Container(
        width: 0.45.sw,
        height: 170.h,
        decoration: BoxDecoration(
          color: !isDark ? LightThemeColor.primary : DarkThemeColor.primary,
          borderRadius: BorderRadius.circular(5),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10.w, 30.h, 10.w, 20.h),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  icon,
                  color: !isDark
                      ? LightThemeColor.alternate
                      : DarkThemeColor.alternate,
                  size: 70,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15.h, 0, 0),
                  child: Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'Readex Pro',
                          color: !isDark
                              ? LightThemeColor.alternate
                              : DarkThemeColor.alternate,
                          fontSize: 24,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
