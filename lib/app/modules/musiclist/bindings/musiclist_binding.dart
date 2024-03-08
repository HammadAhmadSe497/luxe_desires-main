import 'package:get/get.dart';

import '../controllers/musiclist_controller.dart';

class MusiclistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MusiclistController>(
      () => MusiclistController(),
    );
  }
}
