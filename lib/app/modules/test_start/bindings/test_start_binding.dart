import 'package:get/get.dart';

import '../controllers/test_start_controller.dart';

class TestStartBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TestStartController>(
      () => TestStartController(),
    );
  }
}
