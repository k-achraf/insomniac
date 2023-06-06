import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../config/theme/styles.dart';
import '../../../components/button.dart';
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
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: context.mediaQueryPadding.top,),
              Image.asset(
                Get.arguments['image'],
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              Text(
                Get.arguments['desc'].tr,
                style: Styles.body1TextStyle.copyWith(
                  color: Colors.black
                ),
              ),
              Button(
                onPressed: (){
                  Get.toNamed(Get.arguments['route']);
                },
                text: Get.arguments['button'].tr,
              )
            ],
          ),
        ),
      ),
    );
  }
}
