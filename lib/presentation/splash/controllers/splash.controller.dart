// import 'dart:async';

// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:multi_login/infrastructure/navigation/routes.dart';

// class SplashController extends GetxController {
//   final box = GetStorage();
//   RxBool alreadyLoggedIn = false.obs;
//   RxBool displaySplashImage = true.obs;
//   static const int splashDurationSeconds = 10;

//   @override
//   void onInit() {
//     super.onInit();
//     print('onInit called');
//   }

//   @override
//   void onReady() {
//     super.onReady();
//     checkLoggedIn();
//   }

//   @override
//   void onClose() {
//     super.onClose();
//   }

//   void checkLoggedIn() {
//     var email = box.read('email');
//     if (email != null && email.isNotEmpty) {
//       alreadyLoggedIn.value = true;
//     }

//     Timer(
//       Duration(seconds: splashDurationSeconds),
//       () {
//         if (alreadyLoggedIn.value) {
//           Get.offNamed(Routes.HOME);
//         } else {
//           Get.offNamed(Routes.LOGIN);
//         }
//       },
//     );
//   }
// }

import 'dart:async';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:multi_login/infrastructure/navigation/routes.dart';

class SplashController extends GetxController {
  final box = GetStorage();
  RxBool alreadyLoggedIn = false.obs;
  RxBool displaySplashImage = true.obs;
  static const int splashDurationSeconds = 5;

  @override
  void onInit() {
    super.onInit();
    print('onInit called');
    checkLoggedIn();
  }

  void checkLoggedIn() {
    var email = box.read('email');
    if (email != null && email.isNotEmpty) {
      alreadyLoggedIn.value = true;
    }

    Timer(
      Duration(seconds: splashDurationSeconds),
      () {
        if (alreadyLoggedIn.value) {
          Get.offNamed(Routes.HOME);
        } else {
          Get.offNamed(Routes.LOGIN);
        }
      },
    );
  }
}
