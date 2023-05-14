import 'package:Insomniac/app/components/language_button.dart';
import 'package:Insomniac/app/routes/app_pages.dart';
import 'package:Insomniac/config/theme/colors.dart';
import 'package:Insomniac/config/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../components/button.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: context.mediaQueryPadding.top + 30.h,),
              Image.asset(
                'assets/images/quiz.png',
                width: context.width / 3,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 20.h,),
              Text(
                'INSOMNIAC',
                style: Styles.headLine1TextStyle.copyWith(
                  color: MyColors.questionColor
                ),
              ),
              SizedBox(height: 30.h,),
              Text(
                'desc'.tr,
                style: Styles.body3TextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 100.h,),
              SizedBox(
                width: context.width - 46.w,
                child: Button(
                  onPressed: (){
                    Get.toNamed(Routes.SHORT_TEST);
                  },
                  text: 'taketheshorttest'.tr,
                ),
              ),
              SizedBox(height: 20.h,),
              SizedBox(
                width: context.width - 46.w,
                child: Button(
                  onPressed: (){
                    Get.toNamed(Routes.LONG_TEST);
                  },
                  text: 'takethelongtest'.tr,
                  bgColor: MyColors.selectedColor,
                  textColor: MyColors.thirdColor,
                ),
              ),
              SizedBox(height: 60.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LanguageButton(
                    text: 'AR',
                    onPressed: (){
                      controller.changeLanguage('ar');
                    }
                  ),
                  SizedBox(width: 10.w,),
                  LanguageButton(
                    text: 'EN',
                    onPressed: (){
                      controller.changeLanguage('en');
                    },
                    bgColor: MyColors.selectedColor,
                    textColor: MyColors.primaryColor,
                  ),
                  SizedBox(width: 10.w,),
                  LanguageButton(
                    text: 'FR',
                    onPressed: (){
                      controller.changeLanguage('fr');
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
