import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/modules/userprofile/views/widgets/profile_menu_tile.dart';
import 'package:luxe_desires/app/routes/app_pages.dart';
import 'package:luxe_desires/app/widgets/submit_button.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(4.w, 20.h, 0, 20.h),
            child: Text(
              'Account',
              style: GoogleFonts.luckiestGuy(
                textStyle: const TextStyle(color: Colors.white, fontSize: 35),
              ),
            ),
          ),
          Row(
            children: [
              ProfileMenuTile(
                customIcon: Icons.person,
                title: 'Profile',
                onTap: () {
                  Get.toNamed(Routes.EDITPROFILE);
                },
              ),
              ProfileMenuTile(
                customIcon: Icons.settings,
                title: 'App Setting',
                onTap: () {
                  Get.toNamed(Routes.HOME);
                },
              ),
            ],
          ),
          Row(
            children: [
              ProfileMenuTile(
                customIcon: Icons.backpack,
                title: 'Orders',
                onTap: () {
                  Get.toNamed(Routes.HOME);
                },
              ),
              ProfileMenuTile(
                customIcon: Icons.help,
                title: 'Help & Support',
                onTap: () {
                  Get.toNamed(Routes.HOME);
                },
              ),
            ],
          ),
          Row(
            children: [
              ProfileMenuTile(
                customIcon: Icons.emergency,
                title: 'Emergency',
                onTap: () {
                  Get.toNamed(Routes.HOME);
                },
              ),
              ProfileMenuTile(
                customIcon: Icons.logout,
                title: 'Logout',
                onTap: () {
                  Get.toNamed(Routes.ONBOARDING);
                },
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
