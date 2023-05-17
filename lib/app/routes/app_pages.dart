import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/long_test/bindings/long_test_binding.dart';
import '../modules/long_test/views/long_test_view.dart';
import '../modules/result/bindings/result_binding.dart';
import '../modules/result/views/result_view.dart';
import '../modules/short_test/bindings/short_test_binding.dart';
import '../modules/short_test/views/short_test_view.dart';
import '../modules/test_start/bindings/test_start_binding.dart';
import '../modules/test_start/views/test_start_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LONG_TEST,
      page: () => const LongTestView(),
      binding: LongTestBinding(),
    ),
    GetPage(
      name: _Paths.SHORT_TEST,
      page: () => const ShortTestView(),
      binding: ShortTestBinding(),
    ),
    GetPage(
      name: _Paths.RESULT,
      page: () => const ResultView(),
      binding: ResultBinding(),
    ),
    GetPage(
      name: _Paths.TEST_START,
      page: () => const TestStartView(),
      binding: TestStartBinding(),
    ),
  ];
}
