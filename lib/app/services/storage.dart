import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import '../../config/translation/localization_service.dart';

class Storage{

  static final GetStorage _box = GetStorage();
  static const String _currentLocalKey = 'current_local';

  static save(key, value) async{
    await _box.write(key, value);
  }

  static read(key) {
    return _box.read(key);
  }

  static token(){
    return _box.read('token') ?? '';
  }

  static delete(key) async{
    await _box.remove(key);
  }

  /// save current locale
  static Future<void> setCurrentLanguage(String languageCode) async{
    await save(_currentLocalKey, languageCode);
  }

  /// get current locale
  static Locale getCurrentLocal(){
    String? langCode = read(_currentLocalKey);
    // default language is english
    if(langCode == null){
      return LocalizationService.defaultLanguage;
    }
    return LocalizationService.supportedLanguages[langCode]!;
  }
}