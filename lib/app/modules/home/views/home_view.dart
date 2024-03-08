import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:luxe_desires/app/constants/app_color.dart';
import 'package:luxe_desires/app/constants/theme_controller.dart';
import 'package:luxe_desires/app/modules/home/views/components/explore_area.dart';
import 'package:luxe_desires/app/modules/home/views/components/menu_area.dart';
import 'package:luxe_desires/app/modules/home/views/components/popular_area.dart';
import 'package:luxe_desires/app/modules/home/views/components/video_area.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.find();
    final isDark = themeController.isDark.value;
    // Future.delayed(Duration(seconds: 5),(){
    //   Get.toNamed(page)
    // });
    return Scaffold(
      body:SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const VideoArea(),
            const SizedBox(
              height: 40,
            ),
            const MenuArea(),
            SizedBox(
              height: 12.h,
            ),
          ],
        ),
      ),
    ),
    );
  }
}
