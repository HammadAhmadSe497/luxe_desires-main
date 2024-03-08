import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../routes/app_pages.dart';

class AuthpageController extends GetxController {
  final getstorage = GetStorage();
  // signin controllers
  final emailAddressLoginController = TextEditingController();
  final passwordLoginController = TextEditingController();
  final passwordLoginVisibility = false.obs;
  // signup controllers
  final nameController = TextEditingController();
  final emailAddressController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();
  final passwordVisibility = false.obs;
  final passwordConfirmController = TextEditingController();
  final passwordConfirmVisibility = false.obs;

  auth() {
    getstorage.write("id", 1);
    getstorage.write("name", "abc");
    Get.offAllNamed(Routes.HOME);
  }

  @override
  void onClose() {
    super.onClose();
    emailAddressLoginController.dispose();
    passwordLoginController.dispose();
    nameController.dispose();
    emailAddressController.dispose();
    phoneNumberController.dispose();
    passwordController.dispose();
    passwordConfirmController.dispose();
  }
}
