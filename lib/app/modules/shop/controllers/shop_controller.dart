import 'package:get/get.dart';

class ShopController extends GetxController {
  final count = 0.obs;

  void increment() => count.value++;
}
