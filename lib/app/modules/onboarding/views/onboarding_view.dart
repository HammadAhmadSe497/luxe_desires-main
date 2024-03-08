import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/routes/app_pages.dart';
import 'package:luxe_desires/app/widgets/submit_button.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Get.toNamed(Routes.AUTHPAGE, arguments: [""]);
    });
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    return Scaffold(
      backgroundColor: isDark
          ? DarkThemeColor.secondaryBackground
          : LightThemeColor.secondaryBackground,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: 500.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: isDark
                      ? [
                          DarkThemeColor.primary,
                          DarkThemeColor.error,
                          DarkThemeColor.tertiary,
                        ]
                      : [
                          LightThemeColor.primary,
                          LightThemeColor.error,
                          LightThemeColor.tertiary,
                        ],
                  stops: const [0, 0.5, 1],
                  begin: const AlignmentDirectional(-1, -1),
                  end: const AlignmentDirectional(1, 1),
                ),
              ),
              child: Container(
                width: 100.w,
                height: 100.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: isDark
                        ? [
                            DarkThemeColor.primary,
                            DarkThemeColor.secondaryBackground,
                          ]
                        : [
                            LightThemeColor.primary,
                            LightThemeColor.secondaryBackground,
                          ],
                    stops: const [0, 1],
                    begin: const AlignmentDirectional(0, -1),
                    end: const AlignmentDirectional(0, 1),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 120.w,
                      height: 120.h,
                      decoration: BoxDecoration(
                        color: !isDark
                            ? LightThemeColor.accent4
                            : DarkThemeColor.accent4,
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.w, 15.h, 15.w, 15.h),
                        child: Image.asset(
                          'assets/imgs/Logo.png',
                          width: 100.w,
                          height: 100.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 44.h, 0, 0),
                      child: Text(
                        'Welcome!',
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(44.w, 8.h, 44.w, 0),
                      child: Text(
                        'Thanks for joining! Access or create your account below, and get started on your journey!',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Padding(
          //   padding: EdgeInsetsDirectional.fromSTEB(16.w, 24.h, 24.w, 60.h),
          //   child: SubmitButton(
          //     title: 'Get Started',
          //     onTap: () {
          //       Get.toNamed(Routes.AUTHPAGE);
          //     },
          //     width: 230.w,
          //     // bgColor: DarkThemeColor.secondaryBackground,
          //     bdColor: LightThemeColor.accent4,
          //   ),
          // ),
        ],
      ),
    );
  }
}
