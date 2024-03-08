import 'package:get/get.dart';

import '../controllers/event_screen_controller.dart';

class EventScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventScreenController>(
      () => EventScreenController(),
    );
  }
}
