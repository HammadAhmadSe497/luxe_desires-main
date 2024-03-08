import 'dart:async';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../routes/app_pages.dart';

class OnboardingController extends GetxController {
  final getstorage = GetStorage();
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    if (getstorage.read("id") != null) {
      Future.delayed(Duration(seconds: 5), () {
        Get.offAllNamed(Routes.AUTHPAGE);
      });
    } else {
      Get.offAllNamed(Routes.ONBOARDING);
    }
  }
}
