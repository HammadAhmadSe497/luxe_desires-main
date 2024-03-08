import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/contants.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/routes/app_pages.dart';
import 'package:luxe_desires/app/widgets/submit_button.dart';

class ExploreArea extends StatelessWidget {
  const ExploreArea({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        Container(
          width: double.infinity,
          height: 230.h,
          decoration: BoxDecoration(
            color: !isDark
                ? LightThemeColor.secondaryBackground
                : DarkThemeColor.secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.network(
                'https://images.unsplash.com/photo-1590523741831-ab7e8b8f9c7f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YmVhY2hlc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
              ).image,
            ),
            boxShadow: const [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x250F1113),
                offset: Offset(0, 1),
              )
            ],
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: const Color(0x430F1113),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12.w, 12.h, 12.w, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 70.h, 0),
                    child: Text('Discover the most popular events',
                        style: headlineStyle.copyWith(
                            color: DarkThemeColor.primaryText)),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12.w, 0, 0),
                    child: SubmitButton(
                      title: 'Explore Now',
                      onTap: () {
                        Get.toNamed(Routes.EVENT_SCREEN);
                      },

                      height: 50.h,
                      textColor: DarkThemeColor.primaryText,
                      bgColor: DarkThemeColor.primary,
                      // bdColor: LightThemeColor.accent4,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
      ],
    );
  }
}
