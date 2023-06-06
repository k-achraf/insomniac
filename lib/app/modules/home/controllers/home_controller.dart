import 'package:Insomniac/app/controllers/theme_controller.dart';
import 'package:Insomniac/config/translation/localization_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {

  ThemeController themeController = Get.find<ThemeController>();
  changeLanguage(code){
    LocalizationService.updateLanguage(code);

    update();
  }

  changeTheme(bool dark){
    themeController.setThemeMode(dark);
  }
}
