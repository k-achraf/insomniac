import 'package:Insomniac/app/data/enums/result.dart';
import 'package:get/get.dart';

class ResultController extends GetxController {
  @override
  void onInit() {
    if(Get.arguments == 0){
      result = Result.positive;
    }
    else{
      result = Result.negative;
    }
    super.onInit();
  }

  late Result result;
}
