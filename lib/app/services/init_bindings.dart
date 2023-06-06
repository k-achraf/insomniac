import 'package:Insomniac/app/controllers/theme_controller.dart';
import 'package:get/get.dart';

class InitBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(ThemeController());
  }
}