import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:multi_login/infrastructure/navigation/routes.dart';

import 'controllers/douser.controller.dart';

class DouserScreen extends GetView<DouserController> {
  DouserScreen({Key? key}) : super(key: key);
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DouserScreen'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                box.remove('douseremail');
                Get.offNamed(Routes.LOGIN);
              },
              icon: Icon(Icons.logout))
        ],
      ),
      body: const Center(
        child: Text(
          'DouserScreen is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
