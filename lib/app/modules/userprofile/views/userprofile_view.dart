import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/modules/userprofile/views/components/profile_menu.dart';
import 'package:luxe_desires/app/modules/userprofile/views/components/theme_row.dart';
import 'package:luxe_desires/app/modules/userprofile/views/components/user_info.dart';

import '../controllers/userprofile_controller.dart';

class UserprofileView extends GetView<UserprofileController> {
  const UserprofileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //const UserInfo(),
                // SizedBox(
                //   height: 2.h,
                // ),
             //   const ThemeModeRow(),
                ProfileMenu(),
              ],
            ),
          ),
        ));
  }
}
