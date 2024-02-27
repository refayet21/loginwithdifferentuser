import 'package:get/get.dart';

import '../../../../presentation/admin/adduser/controllers/adduser.controller.dart';

class AdduserControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AdduserController>(
      () => AdduserController(),
    );
  }
}
