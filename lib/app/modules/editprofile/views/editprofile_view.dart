import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/widgets/input_feild.dart';
import 'package:luxe_desires/app/widgets/submit_button.dart';

import '../controllers/editprofile_controller.dart';

class EditprofileView extends GetView<EditprofileController> {
  const EditprofileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: !isDark
            ? LightThemeColor.secondaryBackground
            : DarkThemeColor.secondaryBackground,
        automaticallyImplyLeading: true,
        title: Text(
          'Edit Profile',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: 'Readex Pro',
                color: !isDark
                    ? LightThemeColor.primaryText
                    : DarkThemeColor.alternate,
                fontSize: 19.sp,
              ),
        ),
        foregroundColor:
            !isDark ? LightThemeColor.primaryText : DarkThemeColor.alternate,
        centerTitle: false,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width,
              margin: EdgeInsets.only(top: 1.h),
              decoration: BoxDecoration(
                color: !isDark
                    ? LightThemeColor.secondaryBackground
                    : DarkThemeColor.secondaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color(0x430F1113),
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8.r),
                  bottomRight: Radius.circular(8.r),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.0.h),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InputField(
                      labelText: 'Your Name',
                      validatior: (value) {
                        if (value.toString().isEmpty) {
                          return '';
                        }
                      },
                      bgColor: Colors.transparent,
                      bdColor: !isDark
                          ? LightThemeColor.primaryBackground
                          : DarkThemeColor.primaryBackground,
                      inputController: controller.nameController,
                      isContentPadding: false,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    InputField(
                      labelText: 'Email Address',
                      validatior: (value) {
                        if (value.toString().isEmpty) {
                          return '';
                        }
                      },
                      bgColor: Colors.transparent,
                      bdColor: !isDark
                          ? LightThemeColor.primaryBackground
                          : DarkThemeColor.primaryBackground,
                      inputController: controller.emailAddressController,
                      isContentPadding: false,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    InputField(
                      labelText: 'Phone Number',
                      validatior: (value) {
                        if (value.toString().isEmpty) {
                          return '';
                        }
                      },
                      bgColor: Colors.transparent,
                      bdColor: !isDark
                          ? LightThemeColor.primaryBackground
                          : DarkThemeColor.primaryBackground,
                      inputController: controller.phoneNumberController,
                      isContentPadding: false,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    SubmitButton(
                      title: 'Save Changes',
                      onTap: () {
                        Get.back();
                      },
                      width: 230.w,
                      height: 50.h,
                      textColor: DarkThemeColor.alternate,
                      bgColor: DarkThemeColor.primary,
                      // bdColor: LightThemeColor.accent4,
                    ),
                    SizedBox(
                      height: 30.h,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
