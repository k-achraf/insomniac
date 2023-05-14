import 'package:get/get.dart';

import '../controllers/short_test_controller.dart';

class ShortTestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShortTestController>(
      () => ShortTestController(),
    );
  }
}
