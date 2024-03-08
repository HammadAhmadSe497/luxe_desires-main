import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';

class ThemeModeRow extends GetView<ThemeController> {
  const ThemeModeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          // setDarkModeSetting(context, ThemeMode.light);
          controller.isDark.value = !controller.isDark.value;
          controller.changeTheme();
        },
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          decoration: BoxDecoration(
            color: controller.isDark.value
                ? DarkThemeColor.secondaryBackground
                : LightThemeColor.secondaryBackground,
          ),
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                controller.isDark.value
                    ? 'Switch to Light Mode'
                    : 'Switch to Dark Mode',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Container(
                width: 80.w,
                height: 40.h,
                decoration: BoxDecoration(
                  color: controller.isDark.value
                      ? DarkThemeColor.primaryBackground
                      : LightThemeColor.primaryBackground,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Stack(
                  alignment: const AlignmentDirectional(0, 0),
                  children: [
                    Align(
                      alignment: AlignmentDirectional(
                          controller.isDark.value ? -0.9 : 0.95, 0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(8.w, 2.h, 8.w, 0),
                        child: Icon(
                          controller.isDark.value
                              ? Icons.wb_sunny_rounded
                              : Icons.nights_stay,
                          color: controller.isDark.value
                              ? DarkThemeColor.secondaryText
                              : LightThemeColor.secondaryText,
                          size: 24.sp,
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(
                          controller.isDark.value ? 0.9 : -0.85, 0),
                      child: Container(
                        width: 36.w,
                        height: 36.h,
                        decoration: BoxDecoration(
                          color: controller.isDark.value
                              ? DarkThemeColor.secondaryBackground
                              : LightThemeColor.secondaryBackground,
                          boxShadow: const [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x430B0D0F),
                              offset: Offset(0, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(30),
                          shape: BoxShape.rectangle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
