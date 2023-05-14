import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sklite/ensemble/forest.dart';
import 'package:sklite/utils/io.dart';

import '../../../data/enums/types.dart';
import '../../../data/models/question.dart';
import '../../../routes/app_pages.dart';

class LongTestController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }
  TextEditingController answerController = TextEditingController();
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
    Question(
      question: 'question8'.tr,
      type: Types.text
    ),
    Question(
      question: 'question9'.tr,
      type: Types.text
    ),
    Question(
      question: 'question10'.tr,
      type: Types.text
    ),
    Question(
      question: 'question11'.tr,
      type: Types.text
    ),
    Question(
      question: 'question12'.tr,
      type: Types.text
    ),
    Question(
      question: 'question13'.tr,
      type: Types.radio,
      options: [
        'notd'.tr,
        'less'.tr,
        'once'.tr,
        'three'.tr,
      ]
    ),
    Question(
      question: 'question14'.tr,
      type: Types.radio,
      options: [
        'notd'.tr,
        'less'.tr,
        'once'.tr,
        'three'.tr,
      ]
    ),
    Question(
      question: 'question15'.tr,
      type: Types.radio,
      options: [
        'notd'.tr,
        'less'.tr,
        'once'.tr,
        'three'.tr,
      ]
    ),
    Question(
      question: 'question16'.tr,
      type: Types.radio,
      options: [
        'notd'.tr,
        'less'.tr,
        'once'.tr,
        'three'.tr,
      ]
    ),
    Question(
      question: 'question17'.tr,
      type: Types.radio,
      options: [
        'notd'.tr,
        'less'.tr,
        'once'.tr,
        'three'.tr,
      ]
    ),
    Question(
      question: 'question18'.tr,
      type: Types.radio,
      options: [
        'notd'.tr,
        'less'.tr,
        'once'.tr,
        'three'.tr,
      ]
    ),
    Question(
      question: 'question19'.tr,
      type: Types.radio,
      options: [
        'notd'.tr,
        'less'.tr,
        'once'.tr,
        'three'.tr,
      ]
    ),
    Question(
      question: 'question20'.tr,
      type: Types.radio,
      options: [
        'notd'.tr,
        'less'.tr,
        'once'.tr,
        'three'.tr,
      ]
    ),
    Question(
      question: 'question21'.tr,
      type: Types.radio,
      options: [
        'notd'.tr,
        'less'.tr,
        'once'.tr,
        'three'.tr,
      ]
    ),
    Question(
      question: 'question22'.tr,
      type: Types.radio,
      options: [
        'no'.tr,
        'yes'.tr,
      ]
    ),
    Question(
      question: 'question23'.tr,
      type: Types.radio,
      options: [
        'notd'.tr,
        'less'.tr,
        'once'.tr,
        'three'.tr,
      ]
    ),
    Question(
      question: 'question24'.tr,
      type: Types.radio,
      options: [
        'notd'.tr,
        'less'.tr,
        'once'.tr,
        'three'.tr,
      ]
    ),
    Question(
      question: 'question25'.tr,
      type: Types.radio,
      options: [
        'notd'.tr,
        'less'.tr,
        'once'.tr,
        'three'.tr,
      ]
    ),
    Question(
      question: 'question26'.tr,
      type: Types.radio,
      options: [
        'notd'.tr,
        'less'.tr,
        'once'.tr,
        'three'.tr,
      ]
    ),
    Question(
      question: 'question27'.tr,
      type: Types.radio,
      options: [
        'vgood'.tr,
        'fgood'.tr,
        'fbad'.tr,
        'vbad'.tr,
      ]
    ),
  ];
  List<double> answers = List.generate(27, (index) => 0);

  nextQuestion(){
    if(questions[question].type == Types.text){
      if(answerController.text.isNotEmpty){
        if(double.parse(answerController.text) >= 0 && double.parse(answerController.text) <= 60){
          answers[question] = double.parse(answerController.text);
          answerController.text = '';
          next();
        }
      }
    }
    else{
      if(answers[question] != 0){
        next();
      }
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
    String model = await loadModel('assets/models/rf_model.json');

    RandomForestClassifier rfc = RandomForestClassifier.fromMap(json.decode(model));

    int result = rfc.predict(answers);

    Get.toNamed(Routes.RESULT, arguments: result);
  }

  previousQuestion(){
    if(questions[question].type == Types.text){
      answerController.text = answers[question - 1].toInt().toString();
    }

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
