import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/modules/authpage/controllers/authpage_controller.dart';
import 'package:luxe_desires/app/routes/app_pages.dart';
import 'package:luxe_desires/app/widgets/input_feild.dart';
import 'package:luxe_desires/app/widgets/submit_button.dart';

class SignUpTab extends GetView<AuthpageController> {
  const SignUpTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(44.w, 0, 44.w, 0),
      child: Column(
        children: [
          SizedBox(
            height: 12.h,
          ),
          InputField(
            labelText: 'Full Name',
            validatior: (value) {
              if (value.toString().isEmpty) {
                return '';
              }
            },
            inputController: controller.nameController,
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
            inputController: controller.emailAddressController,
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
            inputController: controller.phoneNumberController,
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
              secure: controller.passwordVisibility.value,
              suffix: controller.passwordVisibility.value
                  ? Icons.visibility
                  : Icons.visibility_off,
              suffixPress: () {
                controller.passwordVisibility.value =
                    !controller.passwordVisibility.value;
              },
              inputController: controller.passwordController,
            ),
          ),
          SizedBox(
            height: 12.h,
          ),
          Obx(
            () => InputField(
              labelText: 'Confirm Password',
              validatior: (value) {
                if (value.toString().isEmpty) {
                  return '';
                }
              },
              secure: controller.passwordConfirmVisibility.value,
              suffix: controller.passwordConfirmVisibility.value
                  ? Icons.visibility
                  : Icons.visibility_off,
              suffixPress: () {
                controller.passwordConfirmVisibility.value =
                    !controller.passwordConfirmVisibility.value;
              },
              inputController: controller.passwordConfirmController,
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          SubmitButton(
            title: 'Create Account',
            onTap: () {
              Get.offAllNamed(Routes.MAINDASHBOARD);
            },
            width: 230.w,
            height: 50.h,
            bgColor: DarkThemeColor.primary,
            // bdColor: LightThemeColor.accent4,
          ),
        ],
      ),
    );
  }
}
