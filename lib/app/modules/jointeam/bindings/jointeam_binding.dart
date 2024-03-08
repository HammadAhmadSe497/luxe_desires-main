import 'package:get/get.dart';

import '../controllers/jointeam_controller.dart';

class JointeamBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<JointeamController>(
      () => JointeamController(),
    );
  }
}
