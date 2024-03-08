import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';

class PriceRow extends StatelessWidget {
  final String title;
  final String value;
  const PriceRow({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8.h),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontFamily: 'Outfit',
                  color: !isDark
                      ? LightThemeColor.primaryText
                      : DarkThemeColor.secondaryText,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.normal,
                ),
          ),
          Text(
            '\$$value',
            textAlign: TextAlign.end,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }
}
