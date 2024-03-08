import 'package:get/get.dart';
import 'package:luxe_desires/app/modules/eventScreen/controllers/event_screen_controller.dart';
import 'package:luxe_desires/app/modules/home/controllers/home_controller.dart';
import 'package:luxe_desires/app/modules/musiclist/controllers/musiclist_controller.dart';
import 'package:luxe_desires/app/modules/userprofile/controllers/userprofile_controller.dart';

import '../../jointeam/controllers/jointeam_controller.dart';
import '../controllers/maindashboard_controller.dart';

class MaindashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MaindashboardController>(
      () => MaindashboardController(),
    );

    Get.lazyPut<HomeController>(
      () => HomeController(),
    );
    Get.lazyPut<EventScreenController>(
      () => EventScreenController(),
    );
    Get.lazyPut<MusiclistController>(
      () => MusiclistController(),
    );
    Get.lazyPut<JointeamController>(
          () => JointeamController(),
    );
    Get.lazyPut<UserprofileController>(
      () => UserprofileController(),
    );
  }
}

