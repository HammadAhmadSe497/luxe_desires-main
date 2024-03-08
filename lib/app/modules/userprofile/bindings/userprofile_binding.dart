import 'package:get/get.dart';

import '../controllers/userprofile_controller.dart';

class UserprofileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserprofileController>(
      () => UserprofileController(),
    );
  }
}
