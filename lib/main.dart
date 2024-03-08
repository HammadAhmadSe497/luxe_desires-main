import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:luxe_desires/app/constants/theme_controller.dart';

import 'app/routes/app_pages.dart';

final ThemeController controller = Get.put(ThemeController());
void main() async {
  await GetStorage.init();
  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => Obx(
        () => GetMaterialApp(
          title: "Application",
          theme: controller.theme.value,
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
        ),
      ),
    ),
  );
}
