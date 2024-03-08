import 'package:flutter/material.dart';
import 'package:flutter_bounce/flutter_bounce.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luxe_desires/app/constants/app_color.dart';

import '../constants/theme_controller.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({
    super.key,
    required this.title,
    this.icon,
    required this.onTap,
    this.height,
    this.width,
    this.radius,
    this.bgColor,
    this.bdColor,
    this.textColor,
    this.iconColor,
    this.textSize,
    this.bdRadius,
  });
  final String? title;
  final IconData? icon;
  final Function() onTap;
  final double? height;
  final double? width;
  final double? radius;
  final Color? bgColor;
  final Color? bdColor;
  final Color? textColor;
  final Color? iconColor;
  final double? textSize;
  final double? bdRadius;

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;

    return Bounce(
      duration: const Duration(milliseconds: 200),
      onPressed: onTap,
      child: Container(
        width: width ?? double.infinity,
        alignment: Alignment.center,
        height: height ?? 52.h,
        decoration: BoxDecoration(
          // boxShadow: [
          //   BoxShadow(
          //     offset: const Offset(5, 5),
          //     blurRadius: 10.0,
          //     color: bgColor ?? ctaColor.withOpacity(.4),
          //   )
          // ],
          color: bgColor ?? Colors.transparent,
          border: Border.all(color: bdColor ?? Colors.transparent, width: 2.w),
          borderRadius:
              BorderRadius.circular(bdRadius == null ? 12.r : bdRadius!),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (title != null)
              Text(
                title!,
                style: GoogleFonts.readexPro(
                  color: textColor ??
                      (!isDark
                          ? LightThemeColor.primaryText
                          : DarkThemeColor.primaryText),
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                ),
              ),
            if (icon != null)
              Padding(
                padding: EdgeInsets.only(left: title != null ? 8.0.w : 0),
                child: Icon(
                  icon,
                  color: iconColor ?? Colors.white,
                ),
              )
          ],
        ),
      ),
    );
  }
}
