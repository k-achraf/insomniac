import 'package:get/get.dart';

import '../controllers/long_test_controller.dart';

class LongTestBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LongTestController>(
      () => LongTestController(),
    );
  }
}
