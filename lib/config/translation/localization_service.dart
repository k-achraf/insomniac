import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../app/services/storage.dart';
import 'ar_AR/ar_ar_translation.dart';
import 'en_US/en_us_translation.dart';
import 'fr_FR/fr_fr_translation.dart';

class LocalizationService extends Translations {
  // prevent creating instance
  LocalizationService._();

  static LocalizationService? _instance;

  static LocalizationService getInstance() {
    _instance ??= LocalizationService._();
    return _instance!;
  }

  // default language
  // todo change the default language
  static Locale defaultLanguage = supportedLanguages['en']!;

  // supported languages
  static Map<String,Locale> supportedLanguages = {
    'en' : const Locale('en', 'US'),
    'ar' : const Locale('ar', 'AR'),
    'fr' : const Locale('fr', 'FR')
  };

  // supported languages fonts family (must be in assets & pubspec yaml) or you can use google fonts
  static Map<String,TextStyle> supportedLanguagesFontsFamilies = {
    // todo add your English font families (add to assets/fonts, pubspec and name it here) default is poppins for english and cairo for arabic
    'en' : const TextStyle(fontFamily: 'Montserrat'),
    'ar': const TextStyle(fontFamily: 'Montserrat'),
    'fr' : const TextStyle(fontFamily: 'Montserrat'),
  };

  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': enUS,
    'ar_AR': arAR,
    'fr_FR' : frFR
  };

  /// check if the language is supported
  static isLanguageSupported(String languageCode) =>
    supportedLanguages.keys.contains(languageCode);


  /// update app language by code language for example (en,ar..etc)
  static updateLanguage(String languageCode) async {
    // check if the language is supported
    if(!isLanguageSupported(languageCode)) return;
    // update current language in shared pref
    await Storage.setCurrentLanguage(languageCode);
    if(!Get.testMode) {
      Get.updateLocale(supportedLanguages[languageCode]!);
    }
  }

  /// check if the language is english
  static bool isItEnglish() =>
      Storage.getCurrentLocal().languageCode.toLowerCase().contains('en');

  /// get current locale
  static Locale getCurrentLocal () => Storage.getCurrentLocal();
}

