import 'package:get/get.dart';

import '../../../../presentation/douser/controllers/douser.controller.dart';

class DouserControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DouserController>(
      () => DouserController(),
    );
  }
}
