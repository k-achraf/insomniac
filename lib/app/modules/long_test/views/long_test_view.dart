import 'package:Insomniac/app/data/enums/types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../config/theme/colors.dart';
import '../../../../config/theme/styles.dart';
import '../../../components/button.dart';
import '../../../components/input.dart';
import '../../../components/select_button.dart';
import '../../../services/storage.dart';
import '../controllers/long_test_controller.dart';

class LongTestView extends GetView<LongTestController> {
  const LongTestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
        bottom: true,
        child: GetBuilder<LongTestController>(builder: (testController) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 23.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: context.mediaQueryPadding.top,),
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
                        color: Color(0xFF45C486),
                      ),
                    ),
                    Text(
                      'ltest'.tr,
                      style: Styles.headLine3TextStyle.copyWith(
                        color: context.theme.canvasColor
                      ),
                    ),
                    const SizedBox()
                  ],
                ),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: context.width - 120,
                      height: 20,
                      decoration: BoxDecoration(
                        color: context.theme.cardColor,
                        borderRadius: BorderRadius.circular(16)
                      ),
                      alignment: Storage.getCurrentLocal().languageCode.toLowerCase().contains('ar') ? Alignment.centerRight : Alignment.centerLeft,
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        width: ((context.width - 100) / testController.questions.length) * (testController.question + 1),
                        height: 20,
                        decoration: BoxDecoration(
                          color: const Color(0xFF45C486),
                          borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                    ),
                    const SizedBox(width: 10.0,),
                    Text(
                      '${testController.question +  1} / ${testController.questions.length}',
                      style: Styles.body3TextStyle.copyWith(
                        color: context.theme.canvasColor
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 50,),
                Text(
                  testController.questions[testController.question].question,
                  style: Styles.headLine2TextStyle.copyWith(
                    color: context.theme.badgeTheme.textColor
                  ),
                ),
                SizedBox(height: 30.h,),
                if(testController.questions[testController.question].type == Types.text)
                  ...[
                    Input(
                      controller: controller.answerController,
                      hint: 'answer'.tr,
                    ),
                  ]
                else
                  for(int i = 0; i < testController.questions[testController.question].options!.length; i++)
                    ...[
                      SelectButton(
                        text: testController.questions[testController.question].options![i],
                        onPressed: (){
                          controller.answer(i + 1);
                        },
                        selected: testController.answers[testController.question] == i + 1,
                      ),
                      SizedBox(height: 10.h,)
                    ],
                SizedBox(height: 50.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: context.width / 3,
                      child: Button(
                        text: 'previous'.tr,
                        onPressed: (){
                          controller.previousQuestion();
                        },
                        bgColor: context.theme.cardColor,
                        textColor: MyColors.thirdColor,
                      ),
                    ),
                    SizedBox(
                      width: context.width / 2,
                      child: Button(
                        text: testController.question < controller.questions.length -1 ? 'next'.tr : 'showresult'.tr,
                        onPressed: (){
                          controller.nextQuestion();
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        }),
      ),
    );
  }
}
