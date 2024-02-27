import 'package:get/get.dart';

import '../../../../presentation/generaluser/controllers/generaluser.controller.dart';

class GeneraluserControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GeneraluserController>(
      () => GeneraluserController(),
    );
  }
}
