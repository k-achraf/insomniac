import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/routes/app_pages.dart';
import 'app/services/storage.dart';
import 'config/theme/theme.dart';
import 'config/translation/localization_service.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(
    ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      rebuildFactor: (old, data) => true,
      builder: (context, widget) {
        return GetMaterialApp(
          // todo add your app name
          title: "Insomniac",
          useInheritedMediaQuery: true,
          debugShowCheckedModeBanner: false,
          builder: (context,widget) {
            return Theme(
              data: MyTheme.theme,
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: widget!,
              ),
            );
          },
          initialRoute: AppPages.INITIAL, // first screen to show when app is running
          getPages: AppPages.routes, // app screens
          translations: LocalizationService.getInstance(),
          locale: Storage.getCurrentLocal(),
        );
      },
    ),
  );
}
