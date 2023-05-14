import 'dart:convert';

import 'package:Insomniac/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:sklite/naivebayes/naive_bayes.dart';
import 'package:sklite/utils/io.dart';

import '../../../data/enums/types.dart';
import '../../../data/models/question.dart';

class ShortTestController extends GetxController {
  int question = 0;

  List<Question> questions = [
    Question(
      question: 'question1'.tr,
      type: Types.radio,
      options: [
        'none'.tr,
        'mild'.tr,
        'moderate'.tr,
        'severe'.tr,
        'verysever'.tr
      ]
    ),
    Question(
      question: 'question2'.tr,
      type: Types.radio,
      options: [
        'none'.tr,
        'mild'.tr,
        'moderate'.tr,
        'severe'.tr,
        'verysever'.tr
      ]
    ),
    Question(
      question: 'question3'.tr,
      type: Types.radio,
      options: [
        'none'.tr,
        'mild'.tr,
        'moderate'.tr,
        'severe'.tr,
        'verysever'.tr
      ]
    ),
    Question(
      question: 'question4'.tr,
      type: Types.radio,
      options: [
        'vsat'.tr,
        'satisfied'.tr,
        'msat'.tr,
        'dis'.tr,
      ]
    ),
    Question(
      question: 'question5'.tr,
      type: Types.radio,
      options: [
        'notice'.tr,
        'litnot'.tr,
        'sw'.tr,
        'muchnot'.tr,
        'vmuchnot'.tr,
      ]
    ),
    Question(
      question: 'question6'.tr,
      type: Types.radio,
      options: [
        'notice'.tr,
        'litnot'.tr,
        'sw'.tr,
        'muchnot'.tr,
        'vmuchnot'.tr,
      ]
    ),
    Question(
      question: 'question7'.tr,
      type: Types.radio,
      options: [
        'notice'.tr,
        'litnot'.tr,
        'sw'.tr,
        'muchnot'.tr,
        'vmuchnot'.tr,
      ]
    ),
  ];

  List<double> answers = [0,0,0,0,0,0,0];

  nextQuestion(){
    if(answers[question] != 0){
      next();
    }
  }

  next(){
    if(question < questions.length - 1){
      question++;
    }
    else{
      showResult();
    }

    update();
  }

  showResult() async{
    String model = await loadModel('assets/models/nb_model.json');

    GaussianNB nbc = GaussianNB.fromMap(json.decode(model));

    int result = nbc.predict(answers);

    Get.toNamed(Routes.RESULT, arguments: result);
  }

  previousQuestion(){
    if(question > 0){
      question--;
    }
    update();
  }

  answer(int index){
    if(answers[question] == index){
      answers[question] = 0;
    }
    else{
      answers[question] = index.toDouble();
    }
    update();
  }
}
