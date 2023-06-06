import 'package:Insomniac/app/services/storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController extends GetxController {

  @override
  void onInit() {
    getThemeMode();
    super.onInit();
  }
  ThemeMode themeMode = ThemeMode.system;

  getThemeMode(){
    String? mode = Storage.read('theme');

    if(mode == 'dark'){
      themeMode = ThemeMode.dark;
    }
    else if(mode == 'light'){
      themeMode = ThemeMode.light;
    }
  }

  setThemeMode(bool darkTheme) async{
    if(darkTheme){
      await Storage.save('theme', 'dark');
      themeMode = ThemeMode.dark;
      Get.changeThemeMode(ThemeMode.dark);
    }
    else{
      await Storage.save('theme', 'light');
      themeMode = ThemeMode.light;
      Get.changeThemeMode(ThemeMode.light);
    }
  }
}
