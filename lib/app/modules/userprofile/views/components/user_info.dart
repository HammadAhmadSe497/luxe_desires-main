import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    return Padding(
      padding: EdgeInsets.only(top: 15.h),
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: !isDark
              ? LightThemeColor.secondaryBackground
              : DarkThemeColor.secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              color: !isDark
                  ? LightThemeColor.primaryBackground
                  : DarkThemeColor.primaryBackground,
              offset: const Offset(0, 0),
            )
          ],
        ),
        padding: EdgeInsetsDirectional.fromSTEB(40.w, 12.h, 24.w, 12.h),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '[Display Name]',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  '[Email]',
                  style: GoogleFonts.outfit(
                    color: !isDark
                        ? LightThemeColor.primary
                        : DarkThemeColor.primary,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(
                  Icons.star_rate_outlined,
                  color: !isDark
                      ? LightThemeColor.primary
                      : DarkThemeColor.primary,
                  size: 20.sp,
                ),
                Text(
                  "[pointsCurrent]",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
