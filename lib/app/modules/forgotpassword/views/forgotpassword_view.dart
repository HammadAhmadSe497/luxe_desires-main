import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/widgets/input_feild.dart';
import 'package:luxe_desires/app/widgets/submit_button.dart';

import '../controllers/forgotpassword_controller.dart';

class ForgotpasswordView extends GetView<ForgotpasswordController> {
  const ForgotpasswordView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DarkThemeColor.primary,
        automaticallyImplyLeading: true,
        title: Text(
          'Forgot Password',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: DarkThemeColor.alternate,
                fontSize: 19.sp,
                fontWeight: FontWeight.w500,
              ),
        ),
        actions: const [],
        centerTitle: false,
        elevation: 4,
      ),
      body: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24.w, 28.h, 24.w, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'We will send you an email with a link to reset your password, please enter the email associated with your account below.',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(
              height: 24.h,
            ),
            InputField(
              labelText: 'Enter Your Email Address...',
              validatior: (value) {
                if (value.toString().isEmpty) {
                  return '';
                }
              },
              bgColor: !isDark
                  ? LightThemeColor.secondaryBackground
                  : DarkThemeColor.secondaryBackground,
              inputController: controller.emailAddressController,
            ),
            SizedBox(
              height: 24.h,
            ),
            SubmitButton(
              title: 'Send Link',
              onTap: () {
                Get.back();
              },
              width: 270.w,
              height: 50.h,
              textColor: !isDark
                  ? LightThemeColor.secondaryBackground
                  : DarkThemeColor.secondaryBackground,
              bgColor: DarkThemeColor.primary,
              // bdColor: LightThemeColor.accent4,
            ),
          ],
        ),
      ),
    );
  }
}
