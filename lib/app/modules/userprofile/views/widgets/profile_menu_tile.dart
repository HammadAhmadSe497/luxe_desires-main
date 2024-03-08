import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';

class ProfileMenuTile extends StatelessWidget {
  final String title;
  final IconData customIcon;
  final Function() onTap;
  const ProfileMenuTile({super.key, required this.customIcon,required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Container(
          width: 160,
          height: 180,
          decoration: BoxDecoration(
            color: !isDark
                ? LightThemeColor.secondaryBackground
                : DarkThemeColor.secondaryBackground,
            boxShadow: const [
              BoxShadow(
                blurRadius: 5,
                color: Color(0x3416202A),
                offset: Offset(0, 2),
              )
            ],
            borderRadius: BorderRadius.circular(12),
            shape: BoxShape.rectangle,
          ),
          margin: EdgeInsets.only(top: 12.h),
          padding: EdgeInsetsDirectional.all(6.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              Icon(
                customIcon,
                 // Icons.arrow_forward_ios,
                color: !isDark
                    ? LightThemeColor.secondaryText
                    : DarkThemeColor.secondaryText,
                size: 40,
              ),
              const SizedBox(height: 20,),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(12.w, 0, 0, 0),
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              const SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
