import 'package:get/get.dart';

import '../controllers/authpage_controller.dart';

class AuthpageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthpageController>(
      () => AuthpageController(),
    );
  }
}
