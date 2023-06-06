import 'package:Insomniac/app/controllers/theme_controller.dart';
import 'package:get/get.dart';

class TestStartController extends GetxController {
  String ? image;
  String? button;
  String? desc;
  String? route;

  ThemeController themeController = Get.find<ThemeController>();
}
