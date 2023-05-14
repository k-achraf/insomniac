import 'package:Insomniac/config/translation/localization_service.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  changeLanguage(code){
    LocalizationService.updateLanguage(code);

    update();
  }
}
