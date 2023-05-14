import 'package:Insomniac/app/data/enums/result.dart';
import 'package:Insomniac/app/routes/app_pages.dart';
import 'package:Insomniac/config/theme/colors.dart';
import 'package:Insomniac/config/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../components/button.dart';
import '../../../services/storage.dart';
import '../controllers/result_controller.dart';

class ResultView extends GetView<ResultController> {
  const ResultView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // top: true,
        // bottom: true,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 23.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  SizedBox(height: context.mediaQueryPadding.top,),
                  SizedBox(
                    width: context.width,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Positioned(
                          right: Storage.getCurrentLocal().languageCode.toLowerCase().contains('ar') ? 0.w : context.width - 69.w,
                          child: InkWell(
                            onTap: (){
                              Get.back();
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: MyColors.primaryColor,
                              size: 20.sp,
                            ),
                          ),
                        ),
                        Text(
                          'result'.tr,
                          style: Styles.headLine1TextStyle,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    controller.result == Result.positive ? 'pres'.tr : 'nres'.tr,
                    style: Styles.headLine2TextStyle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 40.h,),
                  Image.asset(
                    controller.result == Result.positive ? 'assets/images/ill1.png' : 'assets/images/ill2.png',
                    width: context.width / 2,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 50.h,),
                  Text(
                    controller.result == Result.positive ? 'pnote'.tr : 'nnote'.tr,
                    style: Styles.body1TextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              Column(
                children: [
                  Button(
                    text: 'bhomep'.tr,
                    onPressed: (){
                      Get.offAllNamed(Routes.HOME);
                    },
                  ),
                  SizedBox(height: 20.h,)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
