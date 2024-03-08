import 'package:get/get.dart';

import '../controllers/add_music_controller.dart';

class AddMusicBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddMusicController>(
      () => AddMusicController(),
    );
  }
}
