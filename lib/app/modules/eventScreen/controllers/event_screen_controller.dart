import 'package:get/get.dart';
import 'package:luxe_desires/app/data/models/events.dart';

class EventScreenController extends GetxController {
  final count = 0.obs;

  final eventController = Get.put(Events());

  var isLoading = false.obs;

  List<Event> events = [];
  @override
  void onInit() {
    fetchEvents();
    super.onInit();
  }

  void increment() => count.value++;

  fetchEvents() {
    isLoading.value = true;
    eventController.fetchAndSetEvents().then((value) {
      isLoading.value = false;

      events = eventController.events;
    });
  }
}
