import 'package:Insomniac/app/components/button.dart';
import 'package:Insomniac/config/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../controllers/test_start_controller.dart';

class TestStartView extends GetView<TestStartController> {
  const TestStartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          top: true,
          bottom: true,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 23.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: context.mediaQueryPadding.top,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 20,
                        color: Color(0xFF3642D7),
                      ),
                    ),
                    //
                    const SizedBox()
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Image.asset(
                  Get.arguments['image'],
                  height: 200,
                  width: 200,
                  color: const Color(0xFFAFAFAF),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(Get.arguments['desc'],
                  style: Styles.body3TextStyle.copyWith(
                    color: context.theme.canvasColor
                  ),),
                SizedBox(
                  height: 20.h,
                ),
                Button(
                  text: Get.arguments['button'],
                  onPressed: () {
                    Get.toNamed(Get.arguments['route']);
                  })
              ],
            ),
          )),
    );
  }
}
