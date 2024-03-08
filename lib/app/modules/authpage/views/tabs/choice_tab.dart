import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/modules/authpage/controllers/authpage_controller.dart';
import 'package:luxe_desires/app/routes/app_pages.dart';
//import 'package:luxe_desires/app/widgets/input_feild.dart';
import 'package:luxe_desires/app/widgets/submit_button.dart';
//import 'package:url_launcher/url_launcher.dart';

//import 'login_tab.dart';

class ChoiceTab extends GetView<AuthpageController> {
  const ChoiceTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(44.w, 0, 44.w, 0),
      child: Column(
        children: [
          // SizedBox(
          //   height: 50.h,
          // ),
          Text(
            'Select User',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 19.sp,
                  color: DarkThemeColor.primary,
                ),
          ),
          SizedBox(
            height: 50.h,
          ),
          SubmitButton(
            title: 'Guest',
            onTap: () {
              Get.offAllNamed(Routes.HOME);
            },
            width: 230.w,
            height: 50.h,
            textColor: DarkThemeColor.primaryText,
            bgColor: DarkThemeColor.primary,
          ),
          SizedBox(
            height: 20.h,
          ),
          SubmitButton(
            title: 'User',
            onTap: () {
              Get.offAllNamed(Routes.AUTHPAGE, arguments: ["User"]);
              // LoginTab();
            },
            width: 230.w,
            height: 50.h,
            textColor: DarkThemeColor.primaryText,
            bgColor: DarkThemeColor.primary,
          ),
          SizedBox(
            height: 20.h,
          ),
        ],
      ),
    );
  }
}
