import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/modules/authpage/controllers/authpage_controller.dart';
import 'package:luxe_desires/app/routes/app_pages.dart';
import 'package:luxe_desires/app/widgets/input_feild.dart';
import 'package:luxe_desires/app/widgets/submit_button.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginTab extends GetView<AuthpageController> {
  const LoginTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(44.w, 0, 44.w, 0),
      child: Column(
        children: [
          SizedBox(
            height: 50.h,
          ),
          Text(
            'Sign In',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 19.sp,
                  color: DarkThemeColor.primary,
                ),
          ),
          SizedBox(
            height: 50.h,
          ),
          InputField(
            labelText: 'Email Address',
            validatior: (value) {
              if (value.toString().isEmpty) {
                return '';
              }
            },
            inputController: controller.emailAddressLoginController,
          ),
          SizedBox(
            height: 12.h,
          ),
          Obx(
            () => InputField(
              labelText: 'Password',
              validatior: (value) {
                if (value.toString().isEmpty) {
                  return '';
                }
              },
              secure: controller.passwordLoginVisibility.value,
              suffix: controller.passwordLoginVisibility.value
                  ? Icons.visibility
                  : Icons.visibility_off,
              suffixPress: () {
                controller.passwordLoginVisibility.value =
                    !controller.passwordLoginVisibility.value;
              },
              inputController: controller.passwordLoginController,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          SubmitButton(
            title: 'Login',
            onTap: () {
              Get.offAllNamed(Routes.MAINDASHBOARD);
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
            title: 'Forget Password?',
            onTap: () {
              Get.toNamed(Routes.FORGOTPASSWORD);
            },
            width: 170.w,
            height: 40.h,
            textColor: DarkThemeColor.primaryText,
          ),
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'Don\'t have a account?',
                style: GoogleFonts.readexPro(
                  color: DarkThemeColor.primaryText,
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                ),
              ),
              SubmitButton(
                title: 'SignUp',
                textColor: DarkThemeColor.primary,
                onTap: () async {
                  Get.offAllNamed(Routes.AUTHPAGE, arguments: ["new-User"]);
                  // final url =
                  //     Uri.parse('https://www.luxedesiresent.com/sign-up');
                  // if (!await launchUrl(url,
                  //     mode: LaunchMode.externalApplication)) {
                  //   throw Exception('Could not launch $url');
                  // }
                },
                width: 70.w,
                height: 40.h,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
