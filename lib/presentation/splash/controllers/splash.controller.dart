import 'dart:async';

import 'package:get/get.dart';
import 'package:multi_login/infrastructure/navigation/routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    print('oninit called');
  }

  @override
  void onReady() {
    super.onReady();
    Timer(
        const Duration(seconds: 1),
        () => Get.offAllNamed(
              Routes.LOGIN,
            ));
  }

  @override
  void onClose() {
    super.onClose();
  }
}
