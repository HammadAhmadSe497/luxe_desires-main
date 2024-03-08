import 'dart:developer';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:luxe_desires/app/constants/app_theme.dart';

class ThemeController extends GetxController {
  Rx<ThemeData> theme = AppTheme.darkTheme.obs;
  var isDark = true.obs;

  @override
  void onInit() {
    super.onInit();
    final box = GetStorage();
    final value = box.read('isDark') as bool?;
    log(box.read('isDark').toString());
    if (value != null) {
      if (value == false) {
        isDark.value = false;
        theme.value = AppTheme.lightTheme;
      } else {
        isDark.value = true;
        theme.value = AppTheme.darkTheme;
      }
    }
  }

  void changeTheme() {
    final box = GetStorage();

    if (theme.value == AppTheme.darkTheme) {
      theme.value = AppTheme.lightTheme;
      isDark.value = false;
      box.write('isDark', false);
      final value = box.read('isDark') as bool?;
      log(value.toString());
    } else {
      theme.value = AppTheme.darkTheme;
      isDark.value = true;
      box.write('isDark', true);
    }
  }
}
